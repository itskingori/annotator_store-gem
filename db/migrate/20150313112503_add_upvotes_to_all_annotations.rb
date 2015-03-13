class AddUpvotesToAllAnnotations < ActiveRecord::Migration
  def change
    add_column :annotator_store_annotations,       :upvotes, :string, array: true, null: false, default: []
    add_column :annotator_store_image_annotations, :upvotes, :string, array: true, null: false, default: []

    add_index :annotator_store_annotations,       :upvotes, using: 'gin'
    add_index :annotator_store_image_annotations, :upvotes, using: 'gin'
  end
end
