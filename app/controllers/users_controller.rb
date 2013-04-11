class UsersController < ApplicationController
  def index
    @users = User.includes(:subscriptions, :subscription_plans).all
  end

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

  def edit
    @user = User.find(params[:id])
    @newspapers = Newspaper.includes(:subscription_plans).all
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.includes(:newspapers).find(params[:id])
  end
end
