class CategoriesController < ApplicationController

  # Consider putting logic that refers to database calls into the model, per Nathan's Tuesday talk

  def index
    @categories = Category.all
  end

  def show
    @category = Category.friendly.find(params[:id])
  end
end