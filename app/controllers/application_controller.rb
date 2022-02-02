class ApplicationController < ActionController::API
    include JsonWebToken

    before_action :authenticate_request

    private
        def authenticate_request
            header = request.headers["Authorization"]

            if !header
                render json: { error: 'Debes iniciar sesión' }, status: 401
            else 
                header = header.split(" ").last if header
                decoded = jwt_decode(header)
                @current_user = User.find(decoded[:user_id])
            end
        end
end
