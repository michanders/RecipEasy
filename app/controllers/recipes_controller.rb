class RecipesController < ApplicationController


  def index
    @recipe = Recipe.search(params[:search])
  end

  def show
    @details = Recipe.search_details(params[:details])
  end

end
