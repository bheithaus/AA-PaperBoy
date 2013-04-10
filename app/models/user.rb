class User < ActiveRecord::Base
  attr_accessible :name

  has_many :subscriptions
  has_many :subscription_plans, through: :subscriptions

  validates :name, presence: true
end
