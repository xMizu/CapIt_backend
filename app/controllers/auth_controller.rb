class AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: {user: user , token: JWT.encode({userId: user.id}, 'secret')}
    else
      render json: {status: "error", code: 3000, message: "Username/Password is incorrect"}
    end
  end

end
