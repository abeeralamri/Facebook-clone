class RenameTableFriendLists < ActiveRecord::Migration[7.0]
  def change
    rename_table(:friend_lists, :friend)
  end
end
