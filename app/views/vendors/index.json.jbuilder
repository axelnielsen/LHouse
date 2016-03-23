json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :rut, :accountnum, :bankname, :contactphone, :contactmail, :website, :address, :bankaccount_id
  json.url vendor_url(vendor, format: :json)
end
