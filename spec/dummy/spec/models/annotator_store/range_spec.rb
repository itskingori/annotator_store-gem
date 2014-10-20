require 'rails_helper'

module AnnotatorStore
  RSpec.describe Range, type: :model do

    let(:range) { FactoryGirl.create :annotator_store_range }

    it 'has a valid factory' do
      puts range.to_json
      puts range.annotation.to_json
      expect(range).to be_valid
    end
  end
end
