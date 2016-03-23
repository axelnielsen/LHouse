json.array!(@pamenttypes) do |pamenttype|
  json.extract! pamenttype, :id, :name
  json.url pamenttype_url(pamenttype, format: :json)
end
