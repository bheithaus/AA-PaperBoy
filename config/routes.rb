PaperBoi::Application.routes.draw do
  root to: 'newspapers#new'
  resources :subscription_plans, only: :create
  resources :newspapers do
    resources :subscription_plans, only: :new
  end

  resources :subscriptions, only: :destroy

  resources :users
end
