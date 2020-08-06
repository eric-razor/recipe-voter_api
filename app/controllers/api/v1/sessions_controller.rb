class Api::V1::SessionsController < SessionsController

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

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
        error: "No one logged in"
      }
    end
  end

  # DELETE /resource/sign_out
  def destroy
    session.clear
    render json: {
      notice: "successfully logged out"
    }
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  # end
end
