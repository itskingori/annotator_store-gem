require 'rails_helper'

module AnnotatorStore
  RSpec.describe AnnotationsController, type: :routing do

    routes { AnnotatorStore::Engine.routes }

    describe 'routing' do
      it 'routes to #create' do
        expect(post: '/annotations').to route_to('annotator_store/annotations#create')
      end

      it 'routes to #show' do
        expect(get: '/annotations/1').to route_to('annotator_store/annotations#show', id: '1')
      end

      it 'routes to #update' do
        expect(put: '/annotations/1').to route_to('annotator_store/annotations#update', id: '1')
      end

      it 'routes to #destroy' do
        expect(delete: '/annotations/1').to route_to('annotator_store/annotations#destroy', id: '1')
      end
    end
  end
end
