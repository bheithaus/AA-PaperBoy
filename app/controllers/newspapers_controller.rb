class NewspapersController < ApplicationController
  def index
    @newspapers = Newspaper.all
  end

  def new
    @newspaper = Newspaper.new
    2.times do
      @newspaper.subscription_plans.build
    end
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      flash[:success] = "created newspaper #{@newspaper.title}"
      redirect_to @newspaper
    else
      render :new
    end
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end
end
