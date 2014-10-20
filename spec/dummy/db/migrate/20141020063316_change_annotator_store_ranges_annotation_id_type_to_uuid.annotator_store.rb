# This migration comes from annotator_store (originally 20141020062557)
class ChangeAnnotatorStoreRangesAnnotationIdTypeToUuid < ActiveRecord::Migration
  def self.up
    remove_index :annotator_store_ranges, column: :annotation_id
    remove_column :annotator_store_ranges, :annotation_id
    add_column :annotator_store_ranges, :annotation_id, :uuid, index: true
  end
  def self.down
    remove_index :annotator_store_ranges, column: :annotation_id
    remove_column :annotator_store_ranges, :annotation_id
    add_column :annotator_store_ranges, :annotation_id, :integer, index: true
  end
end
