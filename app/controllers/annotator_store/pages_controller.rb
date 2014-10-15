module AnnotatorStore
  class PagesController < ApplicationController
    def index
    end
    def search
      @annotations = AnnotatorStore::Annotation.all
      @total = @annotations.size
    end
  end
end
