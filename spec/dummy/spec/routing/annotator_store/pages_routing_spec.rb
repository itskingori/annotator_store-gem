require 'rails_helper'

module AnnotatorStore
  RSpec.describe PagesController, type: :routing do

    routes { AnnotatorStore::Engine.routes }

    describe 'routing' do
      it 'routes to #index' do
        expect(get: '/').to route_to('annotator_store/pages#index', format: :json)
      end
    end
  end
end
