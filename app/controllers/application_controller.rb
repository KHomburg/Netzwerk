class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception




  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :firstname, :date_of_birth, :aktiv_seit, :bund, :bio])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :firstname, :date_of_birth, :aktiv_seit, :bund, :bio])
  end


  # Confirms a logged-in user.
  def signed_in_user #method that defines that unless the answer of user_signed_in? is true. its true
    unless user_signed_in? # Method defined by Devise
    end
  end


end
