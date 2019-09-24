class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories ,include: [:id , :name, :expenses] 
    end
end
