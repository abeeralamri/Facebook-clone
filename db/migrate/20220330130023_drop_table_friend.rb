class DropTableFriend < ActiveRecord::Migration[7.0]
  def change
    drop_table(:friend_lists)
  end
end
