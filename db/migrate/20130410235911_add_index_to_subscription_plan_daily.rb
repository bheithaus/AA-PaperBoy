class AddIndexToSubscriptionPlanDaily < ActiveRecord::Migration
  def change
    add_index :subscription_plans, :daily
  end
end
