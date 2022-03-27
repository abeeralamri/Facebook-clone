json.extract! profile, :id, :bio, :job, :created_at, :updated_at
json.url profile_url(profile, format: :json)
