require_dependency 'annotator_store/application_controller'

module AnnotatorStore
  class AnnotationsController < ApplicationController
    before_action :set_annotation, only: [:show, :update, :destroy]

    # POST /annotations
    def create
      @annotation = Annotation.new(annotation_params)
      respond_to do |format|
        if @annotation.save
          format.json { render :show, status: :created, location: annotation_url(@annotation) }
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
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_annotation
      @annotation = Annotation.find(params[:id])
    end

    # Only allow a trusted parameter 'white list' through.
    def annotation_params
      params.require(:annotation).permit(:text, :quote, :uri, :ranges)
    end
  end
end
