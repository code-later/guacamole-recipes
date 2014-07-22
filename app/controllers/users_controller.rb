class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if UsersCollection.save(@user)
      session[:current_user_key] = @user.key
      redirect_to root_url
    else
      render :new
    end
  end
end
