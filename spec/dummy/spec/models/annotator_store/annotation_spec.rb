require 'rails_helper'

module AnnotatorStore
  RSpec.describe Annotation, type: :model do

    let(:annotation) { FactoryGirl.create :annotation }

    it 'has a valid factory' do
      expect(annotation).to be_valid
    end
  end
end
