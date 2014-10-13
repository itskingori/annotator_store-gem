require 'rails_helper'

module AnnotatorStore
  RSpec.describe 'Annotations', type: :request do

    let(:annotation) { FactoryGirl.create :annotation }

    describe 'POST /annotations' do
      it 'returns response status 200' do
        valid_attributes = {
          version: 'v1.0',
          text: 'A note I wrote',
          quote: 'the text that was annotated',
          uri: 'http://example.com',
          ranges: '{}'
        }
        post annotator_store.annotations_path, { annotation: valid_attributes }
      end
    end

    describe 'GET /annotations/1' do
      it 'returns response status 200' do
        get annotator_store.annotation_path(annotation)
        expect(response).to have_http_status(200)
      end
    end

    describe 'PUT /annotations/1' do
      it 'returns response status 200' do
        valid_attributes = { version: 'v1.1' }
        put annotator_store.annotation_path(annotation), { annotation: valid_attributes }
      end
    end

    describe 'DELETE /annotations/1' do
      it 'returns response status 204' do
        delete annotator_store.annotation_path(annotation)
        expect(response).to have_http_status(204)
      end
    end
  end
end
