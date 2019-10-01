class CategoriesController < ApplicationController
    def index
        categories = Category.all.sort_by do |category|
            category.expenses.count
        end.reverse
        render json: categories ,include: [:id , :name, :expenses] 
    end
end
