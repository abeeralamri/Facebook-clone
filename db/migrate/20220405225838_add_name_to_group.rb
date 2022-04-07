class AddNameToGroup < ActiveRecord::Migration[7.0]
  def change
    add_column(:groups, :name, :text)
  end
end
