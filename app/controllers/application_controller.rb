class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Confirms a logged-in user.
  def signed_in_user #method that defines that unless the answer of user_signed_in? is true. its true
    unless user_signed_in? # Method defined by Devise
    end
  end

end
