json.extract! cmessage, :id, :message, :user_id, :consultant_id, :created_at, :updated_at
json.url cmessage_url(cmessage, format: :json)