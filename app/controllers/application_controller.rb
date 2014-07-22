class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:current_user_key]
      @_current_user = UsersCollection.by_key(session[:current_user_key])
    end
  end
  helper_method :current_user
end
