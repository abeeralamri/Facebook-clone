class AddFreindToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :freind, :integer
  end
end
