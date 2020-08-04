class CardzController < ApplicationController
  def index
     @crecipe_cards = RecipeCard.all
   end

   def show
     @recipe_card = RecipeCard.find(params[:id])
   end

   def new
     
   end

   def create
     @recipe_card = RecipeCard.new
   end
 end
