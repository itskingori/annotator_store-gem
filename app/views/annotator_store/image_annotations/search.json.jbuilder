json.total @total
json.rows do
  json.array! @image_annotations, partial: 'annotator_store/image_annotations/annotation', as: :image_annotation
end
