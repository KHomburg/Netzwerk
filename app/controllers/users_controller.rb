class UsersController < ApplicationController
before_action :authenticate_user!

  def index
    @user = User.search(params[:term], params[:page])
  end

  def show
    @user = User.find(params[:id])
  end



  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :firstname, :date_of_birth, :aktiv_seit, :bund, :bio])
   end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :firstname, :date_of_birth, :aktiv_seit, :bund, :bio])
   end





end
