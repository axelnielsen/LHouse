json.array!(@subsubaccounts) do |subsubaccount|
  json.extract! subsubaccount, :id, :name, :subaccount_id
  json.url subsubaccount_url(subsubaccount, format: :json)
end
