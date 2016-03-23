json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :community_id, :name, :m2
  json.url apartment_url(apartment, format: :json)
end
