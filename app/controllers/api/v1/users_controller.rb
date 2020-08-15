class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create!(signup_params)
    byebug
    if @user.save
      session[:user_id] = @user.id
      render json: @user
    else
      render json: {
        status: 500
      }
    end
  end

  private

  def signup_params
    params.require(:user).permit(:name,:email,:password )
  end

end
