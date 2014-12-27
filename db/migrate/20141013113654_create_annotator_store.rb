# This migration executes differently depending on the database set via the DB
# environment variable. For PostgreSQL we use UUIDs ... for MySQL we use normal
# primary keys.
class CreateAnnotatorStore < ActiveRecord::Migration
  def self.up
    # If using PostgreSQL database these are extensions are necessary
    database_type = ENV['DB'] || 'postgres'
    if database_type == 'postgres'
      enable_extension 'plpgsql'   unless extension_enabled?('plpgsql')
      enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
      options = { id: :uuid, default: 'uuid_generate_v4()' }
    else
      options = {}
    end

    # Table to store annotations
    create_table :annotator_store_annotations, options do |t|
      t.string :version   # Schema version
      t.text :text        # Content of annotation
      t.text :quote       # The annotated text
      t.string :uri       # URI of annotated document
      t.timestamps        # Time created_at and updated_at
    end

    # Table to store ranges covered by an annotation since each annotation could
    # have many ranges ... at least by design in annotator.js but not yet
    # implemented. Since the associated annotation's primary could be a UUID, at
    # least in the case of PostgreSQL, we'll have to apply some logic to cater
    # for the different scenarios.
    create_table :annotator_store_ranges do |t|
      if database_type == 'postgres'
        t.uuid :annotation_id, :uuid, index: true # Associated annotation's UUID
      else
        t.references :annotation, index: true     # Associated annotation's normal id
      end
      t.string :start                             # Relative XPath to start element
      t.string :end                               # Relative XPath to end element
      t.integer :start_offset                     # Character offset within start element
      t.integer :end_offset                       # Character offset within end element
      t.timestamps
    end
  end

  def self.down
    drop_table :annotator_store_annotations
    drop_table :annotator_store_ranges
  end
end
