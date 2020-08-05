class Cookiecardz::CardzController < ApplicationController
  def index
     @crecipe_cards = RecipeCard.all
   end

   def show
     @recipe_card = RecipeCard.find(params[:id])
   end

   def create
     byebug
     @recipe_card = RecipeCard.create(recipe_params)
   end
 end
