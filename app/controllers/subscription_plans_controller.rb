class SubscriptionPlansController < ApplicationController

  def new
    @subscription_plan = SubscriptionPlan.new
    @subscription_plan.newspaper_id = params[:newspaper_id]
    @title = Newspaper.find(params[:newspaper_id]).title
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    if @subscription_plan.save
      flash[:succes] = "added new subscription plan"
      redirect_to newspaper_path(@subscription_plan.newspaper_id)
    else
      render :new
    end
  end
end
