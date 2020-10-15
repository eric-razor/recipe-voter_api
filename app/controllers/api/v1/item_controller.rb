class Api::V1::ItemController < ApplicationController
  def index
    @items = Item.all

    render json: @items
  end

  def create
    @item = Item.create!(item_params)

    if @item.save
      render json: @item, status: :created
    else
      error_resp = {
        error: @item.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    byebug
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :user_id )
  end
end
