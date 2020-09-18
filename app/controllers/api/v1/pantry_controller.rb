class PantryController < ApplicationController
  def index
    byebug
    @pantry = Pantry.all
  end
end
