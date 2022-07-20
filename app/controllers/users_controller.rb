class UsersController < ApplicationController
    
    def index
        users = User.all
        if users
            render json: users, status: :ok
        else
            render json: {error: ["No users to show"]}, status: :not_found
        end
    end


    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user 
            render json: user, status: :ok
        else 
            render json: {errors: ["User not found"]}, status: :not_found
        end
    end

    private 

    def user_params 
        params.permit(:user, :username, :password)
    end
 end