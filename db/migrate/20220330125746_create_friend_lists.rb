class CreateFriendLists < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_lists do |t|
      t.references :user
      t.references :friend

      t.timestamps
    end
    add_foreign_key :friend_lists, :users, column: :user_id
    add_foreign_key :friend_lists, :users, column: :friend_id
  end
end
