json.array!(@subpayableaccounts) do |subpayableaccount|
  json.extract! subpayableaccount, :id, :type
  json.url subpayableaccount_url(subpayableaccount, format: :json)
end
