class SessionsController < ApplicationController
  def new
  end

  def create
    user = UsersCollection.by_example(username: params[:user][:username]).first
    if user && user.authenticate(params[:user][:password])
      session[:current_user_key] = user.key
      redirect_to recipes_url
    else
      flash.now.alert = "Username or Password wrong. Try again."
      render :new
    end
  end

  def destroy
    @_current_user = session[:current_user_key] = nil
    redirect_to root_url
  end
end
