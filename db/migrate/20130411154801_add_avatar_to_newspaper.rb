class AddAvatarToNewspaper < ActiveRecord::Migration
  def change
    add_attachment :newspapers, :avatar
  end
end
