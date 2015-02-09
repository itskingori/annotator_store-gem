class AddUserToAnnotations < ActiveRecord::Migration
  def change
    add_column :annotator_store_annotations, :user, :string, null: false
    add_column :annotator_store_image_annotations, :user, :string, null: false
  end
end
