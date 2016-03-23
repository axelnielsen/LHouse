json.array!(@messages) do |message|
  json.extract! message, :id, :user_id_from, :user_id_to, :message, :active, :viewed, :name, :deleted_at
  json.url message_url(message, format: :json)
end
