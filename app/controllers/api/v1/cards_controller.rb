class Api::V1::CardsController < ApplicationController

  def index
    if logged_in?
      @cookie_cards = current_user.cards
    end
      render json: CardSerializer.new(@cookie_cards)
   end

   def show
     @cookie_card = CardSerializer.find(params[:id])
   end

   def create
     @cookie_card = CardSerializer.new(recipe_params)
     byebug
     if @cookie_card
       render json: CardSerializer.create!(@cookie_card), status: :created
     else
       error_resp = {
         error: @cookie_card.errors.full_messages.to_sentence
       }
       render json: error_resp, status: :unprocessable_entity
     end
   end

   private

   def recipe_params
     params.require(:card).permit(:recipe_name,:recipe_steps,:recipe_ingredients)
   end
 end
