json.array!(@startscreens) do |startscreen|
  json.extract! startscreen, :id, :name
  json.url startscreen_url(startscreen, format: :json)
end
