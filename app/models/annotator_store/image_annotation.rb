module AnnotatorStore
  class ImageAnnotation < ActiveRecord::Base
    # Validations
    validates :url, presence: true
    validates :text, presence: true
    validates :shape, presence: true
    validates :units, presence: true
    validates :geometry, presence: true
  end
end
