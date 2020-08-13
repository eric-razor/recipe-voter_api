class Api::V1::RegistrationsController < ApplicationController

  def create
    @user = User.create!(signup_params)
    # @user = User.create!(
    #   name: params['registration']['name'],
    #   email: params['registration']['email'],
    #   password: params['registration']['password']
    # )

    if @user
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
    params.require(:registration).permit(:name,:email,:password)
  end
end
