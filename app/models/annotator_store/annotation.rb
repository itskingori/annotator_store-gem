module AnnotatorStore
  class Annotation < ActiveRecord::Base
    # Associations
    has_many :ranges, dependent: :destroy, autosave: true

    # Allow saving of attributes on associated records through the parent,
    # :autosave option is automatically enabled on every association
    accepts_nested_attributes_for :ranges

    # Validations
    validates :version, presence: true
    validates :text, presence: true
    validates :quote, presence: true
    validates :uri, presence: true
  end
end
