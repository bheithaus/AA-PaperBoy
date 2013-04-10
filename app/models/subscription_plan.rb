class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :daily, :price

  belongs_to :newspaper
  has_many :subscriptions
  has_many :users, through: :subscriptions

  validates :daily, :price, presence: true
  validates :daily, inclusion: { in: [true, false] }
end
