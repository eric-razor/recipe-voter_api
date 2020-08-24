class DishController < ApplicationController
  def index
    @dish = Dish.all
    byebug
  end
end
