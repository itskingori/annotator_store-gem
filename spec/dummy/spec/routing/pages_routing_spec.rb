require 'rails_helper'

RSpec.describe AnnotatorStore::PagesController, type: :routing do

  routes { AnnotatorStore::Engine.routes }

  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/').to route_to('annotator_store/pages#index', format: :json)
    end
  end
end
