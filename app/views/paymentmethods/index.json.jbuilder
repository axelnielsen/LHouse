json.array!(@paymentmethods) do |paymentmethod|
  json.extract! paymentmethod, :id, :name
  json.url paymentmethod_url(paymentmethod, format: :json)
end
