class Api::V1::CardsController < ApplicationController

  def index
    if logged_in?
      @cookie_cards = current_user.cards
    end
      render json: @cookie_cards
   end

   def show
     @cookie_card = Card.find(params[:id])
   end

   def create
     @cookie_card = Card.create!(recipe_params)

     if @cookie_card.save
       render json: @cookie_card, status: :created
     else
       error_resp = {
         error: @cookie_card.errors.full_messages.to_sentence
       }
       render json: error_resp, status: :unprocessable_entity
     end
   end

   private

   def recipe_params
     params.require(:card).permit(:recipe_name,:recipe_steps,:recipe_ingredients, :user_id, :card_id )
   end
 end
