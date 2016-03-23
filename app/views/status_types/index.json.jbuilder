json.array!(@status_types) do |status_type|
  json.extract! status_type, :id, :nombre, :content
  json.url status_type_url(status_type, format: :json)
end
