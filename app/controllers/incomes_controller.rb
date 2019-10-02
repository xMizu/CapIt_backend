class IncomesController < ApplicationController
    def create
        token = request.headers['Authorization']
        user_id = JWT.decode(token, 'secret')[0]["userId"]
        user = User.find(user_id)
        income = Income.new(title: params[:name], amount: params[:amount].to_i, user_id: user_id)
        if income.save
            render json: user
        else
            render json: {status: "error", code: 5000, message: income.errors.full_messages[0]}
        end
    end
end
