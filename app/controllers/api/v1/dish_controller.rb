class DishController < ApplicationController
  def index
    @dish = Dish.all
  end
end
