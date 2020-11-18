class Api::V1::CollectionsController < ApplicationController

    def index
      @collections = Collection.all

      render json: @collections, status: 200
    end
    
    def show
     @collection = Collection.find(params[:id])

     render json: @collections, status: 200
    end

    def create 
        @collection = Collection.new(collection_params)
        if @collection.save
            render json: @collection, status: :created, location: @collection
        else
            render json: @collection.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @collection = Collection.new(collection_params)
        @collection.destroy
    end
    private

    def collection_params
        params.require(:collection).permit(:name, :image_url, :description, :source_url, :category_id)
    end

end
