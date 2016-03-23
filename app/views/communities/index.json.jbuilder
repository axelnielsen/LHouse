json.array!(@communities) do |community|
  json.extract! community, :id, :nombre, :address, :phone, :email, :website
  json.url community_url(community, format: :json)
end
