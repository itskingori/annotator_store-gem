# This migration comes from annotator_store (originally 20141015132421)
class RemoveRangesFromAnnotatorStoreAnnotations < ActiveRecord::Migration
  def change
    remove_column :annotator_store_annotations, :ranges
  end
end
