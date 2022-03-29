class AddUserToFriendList < ActiveRecord::Migration[7.0]
  def change
    add_reference :friend_lists, :user
  end
end
