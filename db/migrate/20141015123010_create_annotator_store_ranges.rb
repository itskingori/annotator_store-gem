class CreateAnnotatorStoreRanges < ActiveRecord::Migration
  def change
    create_table :annotator_store_ranges do |t|
      t.references :annotation, index: true
      t.string :start
      t.string :end
      t.integer :start_offset
      t.integer :end_offset
      t.timestamps
    end
  end
end
