json.array!(@journalouts) do |journalout|
  json.extract! journalout, :id, :name, :voucher, :receivableaccount_id, :amount, :description, :community_id, :paymentdate, :apartment_id, :paymentmethod_id, :image, :period, :user_id
  json.url journalout_url(journalout, format: :json)
end
