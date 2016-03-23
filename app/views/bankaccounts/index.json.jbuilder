json.array!(@bankaccounts) do |bankaccount|
  json.extract! bankaccount, :id, :name, :accountholder, :accountnum, :bankname, :initbalance, :community_id
  json.url bankaccount_url(bankaccount, format: :json)
end
