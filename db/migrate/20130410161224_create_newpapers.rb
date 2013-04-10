class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.string :title
      t.string :editor

      t.timestamps
    end
    add_index :newspapers, [:title, :editor]
  end
end
