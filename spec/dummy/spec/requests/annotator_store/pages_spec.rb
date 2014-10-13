require 'rails_helper'

module AnnotatorStore
  RSpec.describe 'Pages', type: :request do

    describe 'GET /' do
      it 'returns response status 200' do
        get annotator_store.root_path
        expect(response).to have_http_status(200)
      end

      it 'returns the json api description' do
        get annotator_store.root_path
        expect(response).to match_json_schema('api/description')
      end
    end
  end
end
