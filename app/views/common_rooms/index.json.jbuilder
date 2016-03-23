json.array!(@common_rooms) do |common_room|
  json.extract! common_room, :id, :name, :community_id
  json.url common_room_url(common_room, format: :json)
end
