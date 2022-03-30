class CreatePrivacies < ActiveRecord::Migration[7.0]
  def change
    create_table :privacies do |t|
      t.string :public
      t.string :private
      t.string :freinds_only

      t.timestamps
    end
  end
end
