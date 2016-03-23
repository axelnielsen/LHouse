json.array!(@receivableaccounts) do |receivableaccount|
  json.extract! receivableaccount, :id, :name, :initbalance, :descroption, :pymenttype_id, :subtype, :ammount, :percentammount, :aliquot, :building, :community_id
  json.url receivableaccount_url(receivableaccount, format: :json)
end
