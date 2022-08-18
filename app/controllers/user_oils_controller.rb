class UserOilsController < ApplicationController

    def index
        user_oils = UserOil.all
        if user_oils
            render json: user_oils, status: :ok
        else
            render json: {error: ["No oils to show"]}, status: :not_found
        end
    end

    def show 
        user_oil = find_user_oil
        if user_oil
            render json: user_oil, status: :ok
        else
            render json: {error: ["No user oil to show"]}, status: :not_found
        end
    end

    def create 
        user_oil = UserOil.new(user_oil_params)
        if user_oil.save
            render json: user_oil, status: :created
        else
            render json: {errors: user_oil.errors.full_messages.join(",  ")}, status: :unprocessable_entity
        end
    end

    def destroy
        user_oil = find_user_oil
        if user_oil
            user_oil.destroy
            head :no_content
        else
            render json: {error: "User oil not found. See controller or client"}, status: :not_found
        end
    end

    def update 
        user_oil = find_user_oil
        if user_oil
            user_oil.update(user_oil_params)
            render json: user_oil
        else
            render json: {error: "No Oil Found!"}
        end
    end

    private

    def find_user_oil
        UserOil.find_by(id: params[:id])
    end

    def user_oil_params
        params.require(:user_oil).permit(:id, :name, :price, :amount)
    end


end
