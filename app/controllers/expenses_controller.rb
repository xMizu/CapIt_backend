class ExpensesController < ApplicationController
    def create
        expense = Expense.new(user_id: params[:user_id],category_id: params[:category_id], name: params[:name], amount: params[:amount].to_i, goal: false)
        if expense.save
            user = User.find(params[:user_id]).expenses.where(goal: false).order(created_at: :desc)
            render json: user
        else
            render json: {status: "error", message: expense.errors.full_messages}
        end
    end

    def destroy 
        expense = Expense.find(params[:id])
        if expense.destroy
            expenses = expense.user.expenses.order(created_at: :desc)
            render json: expenses
        else
            render json: {status: "error", message: "Sorry we could not process this atm"}
        end
    end

    def savings
        token = request.headers['Authorization']
        user_id = JWT.decode(token, 'secret')[0]["userId"]
        user = User.find(user_id)
        expense = Expense.new(user_id: params[:user_id],category_id: params[:category_id], name: params[:name], amount: params[:amount].to_i, goal: true, end: params[:end])
        if expense.save
            render json: user
        else
            render json: {status: "error", message: expense.errors.full_messages}
        end
    end

    def savings_update
        token = request.headers['Authorization']
        user_id = JWT.decode(token, 'secret')[0]["userId"]
        user = User.find(user_id)
        expense = Expense.find(params[:savings_id])
        if expense
            expense.update(name: params[:name], end: params[:end], amount: params[:amount])
            render json: user
        else
            render json: {status: "error", message: "Sorry we could not process this atm"}
        end
    end
end
