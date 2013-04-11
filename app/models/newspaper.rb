class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title, :subscription_plans_attributes

  has_many :subscription_plans, inverse_of: :newspaper, dependent: :destroy
  accepts_nested_attributes_for :subscription_plans, reject_if: :reject_plan

  has_many :users, through: :subscription_plans

  validates :editor, :title, presence: true
  # maybe also check that they are only word characters?
  validate :only_one_each_type_plan

  private

    def only_one_each_type_plan
      schedules = subscription_plans.map { |plan| plan.daily }
      if schedules.count > schedules.uniq.count
        errors[:daily] << "Cannot have two weekly or two daily subscription plans on one newspaper"
      end
    end

    def reject_plan(attributes)
      attributes[:daily].nil?
    end
end
