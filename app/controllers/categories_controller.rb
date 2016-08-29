class CategoriesController < ApplicationController
  def new
  end

  def create 
    name: params[:name]
    category = Category.new(name: name)
    if category.save
      redirect_to '/posts'
    else
      redirect_to '/categories/new'
    end
  end
end
