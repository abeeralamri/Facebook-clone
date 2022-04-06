json.extract! group_post, :id, :content, :user_id, :group_id, :created_at, :updated_at
json.url group_post_url(group_post, format: :json)
