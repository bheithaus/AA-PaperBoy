class UsersController < ApplicationController
  def new
    @user = User.new
    @newspapers = Newspaper.includes(:subscription_plans).all
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Thanks for signing up with us, #{@user.name}"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.includes(:newspapers).find(params[:id])
  end
end
