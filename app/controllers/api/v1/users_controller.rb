class Api::V1::UsersController < ApplicationController
    # skip_before_action :authenticate_request, only: :create

    def index
        @users = User.all
        render json: @users
    end

    # POST /users
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created
        else
            render json: { error: 'No se pudo crear el usuario.' }, status: :unprocessable_entity
        end 
    end
    

    private
        def user_params
            params.permit(:email, :username, :password)
        end
      
end
