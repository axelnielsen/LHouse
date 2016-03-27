json.array!(@services) do |service|
  json.extract! service, :id, :period, :porcgastocomun, :porcaguacaliente, :porccalefaccion, :vendor_id, :custnumber, :payableaccount_id
  json.url service_url(service, format: :json)
end
