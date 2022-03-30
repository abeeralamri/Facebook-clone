class CreateAccesses < ActiveRecord::Migration[7.0]
  def change
    create_table :accesses do |t|
      t.integer :privacy_id
      t.integer :attr_id
      t.integer :user_id

      t.timestamps
    end
  end
end
