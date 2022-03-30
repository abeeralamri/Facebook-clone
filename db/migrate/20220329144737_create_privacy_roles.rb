class CreatePrivacyRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :privacy_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
