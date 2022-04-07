json.extract! event, :id, :name, :start_date, :end_date, :start_time, :end_time, :privacy, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
