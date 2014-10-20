require_dependency 'annotator_store/application_controller'

module AnnotatorStore
  class AnnotationsController < ApplicationController
    before_action :set_annotation, only: [:show, :update, :destroy]

    # POST /annotations
    def create
      format_client_input_to_rails_convention if params[:annotation].blank?
      @annotation = Annotation.new(annotation_params)
      respond_to do |format|
        if @annotation.save
          format.json { render :show, status: :ok, location: annotation_url(@annotation) }
        else
          format.json { render json: @annotation.errors, status: :unprocessable_entity }
        end
      end
    end

    # GET /annotations/1
    def show
    end

    # PATCH/PUT /annotations/1
    def update
      respond_to do |format|
        if @annotation.update(annotation_params)
          format.json { render :show, status: :ok, location: annotation_url(@annotation) }
        else
          format.json { render json: @annotation.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /annotations/1
    def destroy
      @annotation.destroy
      respond_to do |format|
        format.json { head :no_content, status: :no_content }
      end
    end

    # OPTIONS /annotations
    def options
      respond_to do |format|
        format.json { render :options }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_annotation
      @annotation = Annotation.find(params[:id])
    end

    # Convert the data sent by AnnotatorJS to the format that Rails expects so
    # that we are able to create a proper params object
    def format_client_input_to_rails_convention
      params[:annotation] = {}
      params[:annotation][:version] = 'v1.0'
      params[:annotation][:text] = params[:text]
      params[:annotation][:quote] = params[:quote]
      params[:annotation][:uri] = params[:uri]
      params[:annotation][:ranges_attributes] = params[:ranges].map do |r|
        range = {}
        range[:start]        = r[:start]
        range[:end]          = r[:end]
        range[:start_offset] = r[:startOffset]
        range[:end_offset]   = r[:endOffset]
        range
      end
    end

    # Only allow a trusted parameter 'white list' through.
    def annotation_params
      params.require(:annotation).permit(
       :text,
       :quote,
       :uri,
       :version,
       { ranges_attributes: [ :start, :end, :start_offset, :end_offset ] }
      )
    end
  end
end
