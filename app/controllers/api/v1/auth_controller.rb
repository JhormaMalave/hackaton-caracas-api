class Api::V1::AuthController < ApplicationController
    # skip_before_action :authenticate_request
    
    def create
        @user = User.find_by_email(params[:email])
        if @user&.authenticate(params[:password])
            token = jwt_encode(user_id: @user.id)
            render json: { token: token }, status: :ok
        else
            render json: { error: 'Error al iniciar sesión'}, status: :unauthorized
        end
    end
end
