class AddPermissionsToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotator_store_annotations, :permissions, :json, null: false
    add_column :annotator_store_image_annotations, :permissions, :json, null: false
  end
end
