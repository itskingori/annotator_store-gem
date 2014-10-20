class RemoveRangesFromAnnotatorStoreAnnotations < ActiveRecord::Migration
  def change
    remove_column :annotator_store_annotations, :ranges
  end
end
