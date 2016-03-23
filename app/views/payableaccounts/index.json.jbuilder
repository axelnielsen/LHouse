json.array!(@payableaccounts) do |payableaccount|
  json.extract! payableaccount, :id, :type, :subtype, :subsubtype, :community_id
  json.url payableaccount_url(payableaccount, format: :json)
end
