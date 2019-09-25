class ExpensesController < ApplicationController
    def create
        byebug
        expense = Expense.new(user_id: params[:user_id],category_id: params[:category_id], name: params[:name], description: params[:description], amount: params[:amount].to_i, goal: params[:goal])
        if expense.save
            user = User.find(params[:user_id]).expenses.order(created_at: :desc)
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
end
