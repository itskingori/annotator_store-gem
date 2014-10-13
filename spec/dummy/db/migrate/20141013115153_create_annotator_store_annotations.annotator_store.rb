# This migration comes from annotator_store (originally 20141013113654)
class CreateAnnotatorStoreAnnotations < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    create_table :annotator_store_annotations, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :version   # Schema version
      t.text :text        # Content of annotation
      t.text :quote       # The annotated text
      t.string :uri       # URI of annotated document
      t.json :ranges      # List of ranges covered by annotation

      t.timestamps
    end
  end
end
