module AnnotatorStore
  class Range < ActiveRecord::Base
    # Associations
    belongs_to :annotation
  end
end
