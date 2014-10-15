require 'rails_helper'

module AnnotatorStore
  RSpec.describe 'Annotations', type: :request do

    let(:annotation) { FactoryGirl.create :annotation }
    let(:valid_attributes) do
      {
        version: 'v1.0',
        text: 'A note I wrote',
        quote: 'the text that was annotated',
        uri: 'http://example.com',
        ranges: '{}'
      }
    end

    describe 'POST /annotations' do
      it 'returns response status 200' do
        post annotator_store.annotations_path, annotation: valid_attributes
        expect(response).to have_http_status(200)
      end

      # it 'sets redirect location to read point url' do
      #   post annotator_store.annotations_path, annotation: valid_attributes
      #   expect(response.location).to eq annotator_store.annotation_url(@annotation)
      # end
    end

    describe 'GET /annotations/1' do
      it 'returns response status 200' do
        get annotator_store.annotation_path(annotation)
        expect(response).to have_http_status(200)
      end
    end

    describe 'PUT /annotations/1' do
      it 'returns response status 200' do
        update_attributes = { version: 'v1.1' }
        put annotator_store.annotation_path(annotation), annotation: update_attributes
        expect(response).to have_http_status(200)
      end

      it 'sets redirect location to read point url' do
        update_attributes = { version: 'v1.1' }
        put annotator_store.annotation_path(annotation), annotation: update_attributes
        expect(response.location).to eq annotator_store.annotation_url(annotation)
      end
    end

    describe 'DELETE /annotations/1' do
      it 'returns response status 204' do
        delete annotator_store.annotation_path(annotation)
        expect(response).to have_http_status(204)
      end

      it 'returns no body' do
        delete annotator_store.annotation_path(annotation)
        expect(response.body.length).to eq 0
      end
    end

    # describe 'OPTIONS /annotations' do
    #   it 'returns response status 200' do
    #     options annotator_store.annotations_path
    #     expect(response).to have_http_status(200)
    #   end
    # end
  end
end
