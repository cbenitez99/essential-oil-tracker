class OilsController < ApplicationController

    def index
        oils = Oils.all
        if oils
            render json: oils, status: :ok
        else
            render json: { error: "error, no oils to show"}, status: :not_found
        end
    end
    
end
