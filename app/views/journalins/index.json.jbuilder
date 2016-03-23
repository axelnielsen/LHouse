json.array!(@journalins) do |journalin|
  json.extract! journalin, :id, :name, :voucher, :receivableaccount_id, :amount, :description, :community_id, :paymentdate, :apartment_id, :paymentmethod_id, :image, :period, :user_id
  json.url journalin_url(journalin, format: :json)
end
