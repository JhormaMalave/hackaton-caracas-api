class Api::V1::UsersController < ApplicationController
    #skip_before_action :authenticate_request

    def index
        @users = User.all
        render json: @users
    end
end
