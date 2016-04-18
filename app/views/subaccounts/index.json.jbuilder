json.array!(@subaccounts) do |subaccount|
  json.extract! subaccount, :id, :name, :payableaccount_id
  json.url subaccount_url(subaccount, format: :json)
end
