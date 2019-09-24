class UsersController < ApplicationController
    def index
        user = User.all
        render json: user
    end

    def create 
        user = User.new(username: params[:username],password: params[:password],name: params[:name],balance: params[:balance])
        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def show
        token = request.headers['Authorization']
        user_id = JWT.decode(token, 'secret')[0]["userId"]
        user = User.find(user_id)
        
        render json: user, include: [:id ,:username, :name, :expenses, :categories]
    end
end
