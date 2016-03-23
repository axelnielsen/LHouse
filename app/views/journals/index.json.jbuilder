json.array!(@journals) do |journal|
  json.extract! journal, :id, :name, :vendor_id, :paybleaccount_id, :receivableaccount_id, :credit, :debit, :description, :image, :journalnum, :community_id, :duedate, :paymentdate, :user_id
  json.url journal_url(journal, format: :json)
end
