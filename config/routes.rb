AnnotatorStore::Engine.routes.draw do

  # Root path
  root 'pages#index', defaults: { format: :json }

  # Search
  get 'search', to: 'pages#search'

  # Annotations Endpoint
  resources :annotations, only: [:create, :show, :update, :destroy], defaults: { format: :json }, constraints: { format: :json }
end
