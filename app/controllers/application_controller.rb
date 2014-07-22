class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :load_user

  def current_user
    @current_user
  end
  helper_method :current_user

  private

  def load_user
    if session[:user]
      @current_user = UsersCollection.by_example(username: session[:user])
    end
  end
end
