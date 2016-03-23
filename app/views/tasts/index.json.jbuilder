json.array!(@tasts) do |tast|
  json.extract! tast, :id, :name, :initdate, :inithour, :findate, :finhour, :user_id, :content
  json.url tast_url(tast, format: :json)
end
