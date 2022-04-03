class AddUserAndFriendToGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, foreign_key: true, as: "creator"
    add_reference :groups, :friend, foreign_key: true, as: "friend"
  end
end
