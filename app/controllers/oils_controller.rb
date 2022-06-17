class OilsController < ApplicationController

    def index
        oils = Oil.all
        if oils
            render json: oils, status: :ok
        else
            render json: { error: ["Error, no oils to show"]}, status: :not_found
        end
    end

    def show 
        oil = find_oil
        if oil
            render json: oil, status: :ok
        else
            render json {error: ["No oil to show"]}
        end
    end


end
