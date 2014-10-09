Rails.application.routes.draw do

  mount AnnotatorStore::Engine => '/annotator_store'
end
