require_dependency 'annotator_store/application_controller'

module AnnotatorStore
  class ImageAnnotationsController < ApplicationController
    before_action :set_image_annotation, only: [:show]

    # POST /image_annotations
    def create
      format_annotorious_input_to_rails_convention_for_create
      @image_annotation = ImageAnnotation.new image_annotation_params
      respond_to do |format|
        if @image_annotation.save
          format.json { render :show, status: :created, location: image_annotation_url(@image_annotation) }
        else
          format.json { render json: @image_annotation.errors, status: :unprocessable_entity }
        end
      end
    end

    # GET /image_annotations/1
    def show
    end

    # OPTIONS /image_annotations
    def options
      respond_to do |format|
        format.json { render :options }
      end
    end

    # GET /image_annotations/search
    def search
      format_annotorious_input_to_rails_convention_for_search
      @image_annotations = AnnotatorStore::ImageAnnotation.where(search_params)
      @total = @image_annotations.size
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_image_annotation
      @image_annotation = ImageAnnotation.find(params[:id])
    end

    # Convert the data sent by Annotorious to the format that Rails expects so
    # that we are able to create a proper params object
    # {
    #   "url": "http://lloydbleekcollection.cs.uct.ac.za/images/stow/STOW_001.JPG",
    #   "text": "sdfdfasdf",
    #   "ranges": [],
    #   "quote": "",
    #   "closure_uid_k7l337": 6,
    #   "l": [
    #     {
    #       "type": "rect",
    #       "a": {
    #         "x": 314,
    #         "width": 261,
    #         "y": 207,
    #         "height": 188
    #       }
    #     }
    #   ]
    # }
    def format_annotorious_input_to_rails_convention_for_create
      params[:image_annotation] = {}
      params[:image_annotation][:page_url] = params[:page_url]
      params[:image_annotation][:url] = params[:url]
      params[:image_annotation][:text] = params[:text]
      params[:image_annotation][:units] = 'pixel'
      params[:image_annotation][:shape] = params[:l][0][:type]
      params[:image_annotation][:geometry]   = params[:l][0][:a].to_json.to_s
    end

    def format_annotorious_input_to_rails_convention_for_search
      params[:search] = {}
      params[:search][:page_url] = params[:page_url]
    end

    def image_annotation_params
      params.require(:image_annotation).permit(:page_url, :url, :text, :shape, :units, :geometry)
    end

    def search_params
      params.require(:search).permit(:page_url)
    end
  end
end
