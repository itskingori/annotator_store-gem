AnnotatorStore::Engine.routes.draw do
  # Root path
  root 'pages#index', defaults: { format: :json }

  # Search
  match 'search', to: 'pages#search', via: [:get], defaults: { format: :json }, constraints: { format: :json }
  match 'search', to: 'annotations#options', via: [:options], defaults: { format: :json }, constraints: { format: :json }

  # Annotations Endpoint
  resources :annotations, only: [:create, :show, :update, :destroy], defaults: { format: :json }, constraints: { format: :json } do
    match '/', to: 'annotations#options', via: [:options], on: :collection
    match '/', to: 'annotations#options', via: [:options], on: :member
  end

  # Image Annotation Endpoints
  resources :image_annotations, only: [:create, :show, :update, :destroy], defaults: { format: :json }, constraints: { format: :json } do
    match '/search', to: 'image_annotations#search',  via: [:get],      on: :collection
    match '/search', to: 'image_annotations#options', via: [:options],  on: :collection
    match '/', to: 'image_annotations#options',       via: [:options],  on: :collection
    match '/', to: 'image_annotations#options',       via: [:options],  on: :member
  end
end
