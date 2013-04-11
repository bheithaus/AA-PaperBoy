class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :daily, :price, :newspaper_id

  belongs_to :newspaper, inverse_of: :subscription_plans
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions

  validates :price, :newspaper, presence: true
  validates :daily, inclusion: { in: [true, false] }
  validates :daily, uniqueness: { scope: :newspaper_id, message: "Only plan of each type allowed per paper" }
end
