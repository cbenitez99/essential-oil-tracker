class OilsController < ApplicationController

    def index
        oils = Oil.all
        if oils
            render json: oils, status: :ok
        else
            render json: {error: ["No oils to show"]}, status: :not_found
        end
    end

    def show 
        oil = find_oil
        if oil
            render json: oil, status: :ok
        else
            render json: {error: ["No oil to show"]}, status: :not_found
        end
    end

    def create 
        oil = Oil.new(oil_params)
        if oil.save
            render json: oil, status: :created
        else
            render json: {errors: ["Could not add oil"]}, status: :unprocessable_entity
        end
    end

    def destroy
        oil = find_oil
        if oil
            oil.destroy
            head :no_content
        else
            render json: {error: "Oil not found. See controller||client"}
        end
    end

    private

    def find_oil
        Oil.find_by(id: params[:id])
    end

    def oil_params
        params.require(:oil).permit(:name, :price, :user_id)
    end


end
