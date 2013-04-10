class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :subscription_plan_id
      t.integer :user_id

      t.timestamps
    end

    add_index :subscriptions, :subscription_plan_id
    add_index :subscriptions, :user_id
  end
end
