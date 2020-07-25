# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_permitted_parameters, only: [:create]
  before_action :authenticate_user!
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    @user = User.find_by(email: params[:session][:email])
    if @user
      session[:user_id] = @user.id
      render json: @user
    else
      render json: {
        error: "Invalid credentials (rails side)"
      }
    end
  end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  # end
end
