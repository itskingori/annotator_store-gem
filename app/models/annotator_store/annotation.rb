module AnnotatorStore
  class Annotation < ActiveRecord::Base
    # Associations
    has_many :ranges
  end
end
