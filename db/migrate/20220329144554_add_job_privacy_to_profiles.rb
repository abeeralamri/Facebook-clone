class AddJobPrivacyToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :job_privacy, :integer
  end
end
