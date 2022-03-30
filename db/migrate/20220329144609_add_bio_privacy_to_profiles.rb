class AddBioPrivacyToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :bio_privacy, :integer
  end
end
