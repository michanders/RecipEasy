class RecipesController < ApplicationController

  def show
    @recipe = Recipe.search("cheese")
  end
end
