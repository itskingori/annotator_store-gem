require 'rails_helper'

module AnnotatorStore
  RSpec.describe 'Annotations', type: :request do

    let(:annotation) { FactoryGirl.create :annotator_store_annotation }
    let(:valid_attributes) { FactoryGirl.attributes_for(:annotator_store_annotation) }
    let(:new_attributes) { valid_attributes }

    describe 'POST /annotations' do
      it 'returns response status 200' do
        post annotator_store.annotations_path, annotation: valid_attributes
        expect(response).to have_http_status(200)
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
        put annotator_store.annotation_path(annotation), annotation: new_attributes
        expect(response).to have_http_status(200)
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
  end
end
