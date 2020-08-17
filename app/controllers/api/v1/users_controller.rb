class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create!(signup_params)
    if @user.valid?
      session[:user_id] = @user.id
      byebug
      render json: @user, status: :created
    else
      render json: {
        status: 500
      }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def signup_params
    params.require(:user).permit(:name,:email,:password )
  end

end
