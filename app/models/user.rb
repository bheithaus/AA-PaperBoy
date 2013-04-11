class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids

  has_many :subscriptions, dependent: :destroy
  has_many :subscription_plans, through: :subscriptions

  has_many :newspapers, through: :subscription_plans

  validates :name, presence: true
end
