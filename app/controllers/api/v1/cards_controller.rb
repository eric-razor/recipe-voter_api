class Api::V1::CardsController < ApplicationController

  def index
    if logged_in?
      @cookie_cards = current_user.cards
    end
      render json: @cookie_cards
   end

   def show
     byebug
     @cookie_card = Card.find(params[:id])
     render json: @cookie_card
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

   def update
     if @cookie_card.update(recipe_params)
       render json: @cookie_card, status: :ok
     else
       error_resp = {
         error: @cookie_card.errors.full_messages.to_sentence
       }
       render json: error_resp, status: :unprocessable_entity
     end
   end

   def destroy
     @cookie_card.destroy
   end

   private

   def recipe_params
     params.require(:card).permit(:recipe_name,:recipe_steps,:recipe_ingredients, :user_id )
   end
 end
