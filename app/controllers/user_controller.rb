class UserController < ApplicationController
    skip_before_action :authorize, only: :create 

    # POST /signup
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        # if user
        #     render json: user, status: :created 
        # # else
        # #     render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        # end
    end

    # GET /me
    def show
        # user = User.find_by(session:[:user_id])
        # if user 
        render json: @current_user 
        # else
        #     render json: {error: "not authorized" }, status: :unauthorized 
        # end
    end

    # Need to build out a sessions controller first. In order to Auto-Login I will first need to be able to Login.

    private 

    def user_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio)
    end
end
