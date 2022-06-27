class OilsController < ApplicationController

    def index
        oils = Oil.all
        if oils
            render json: oils, status: :ok
        else
            render json: {error: ["Error, no oils to show"]}, status: :not_found
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

    private

    def find_oil
        Oil.find_by(id: params[:id])
    end


end
