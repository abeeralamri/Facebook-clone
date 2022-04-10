class Creategroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      
      t.references :user, null: false,  foreign_key: true
      t.references :member, null: false
      t.boolean :join_status

      t.timestamps
    end

    add_foreign_key :groups, :users, column: :member_id

  end
end
