class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Confirms a logged-in user.
  def signed_in_user
    unless user_signed_in?
    end
  end

end
