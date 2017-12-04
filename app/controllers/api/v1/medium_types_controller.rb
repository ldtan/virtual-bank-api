module Api
  module V1
    class MediumTypesController < ApplicationController
      before_action :set_medium_type, only: [:show, :update, :destroy]
    
      # GET /medium_types
      def index
        @medium_types = MediumType.all
    
        render json: @medium_types
      end
    
      # GET /medium_types/1
      def show
        render json: @medium_type
      end
    
      # POST /medium_types
      def create
        @medium_type = MediumType.new(medium_type_params)
    
        if @medium_type.save
          render json: @medium_type, status: :created, location: @medium_type
        else
          render json: @medium_type.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /medium_types/1
      def update
        if @medium_type.update(medium_type_params)
          render json: @medium_type
        else
          render json: @medium_type.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /medium_types/1
      def destroy
        @medium_type.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_medium_type
          @medium_type = MediumType.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def medium_type_params
          params.require(:medium_type).permit(:is_active, :name, :details)
        end
    end    
  end
end
