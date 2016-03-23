json.array!(@newsbooks) do |newsbook|
  json.extract! newsbook, :id, :name, :rut, :accountnum, :bankname, :contactphone, :contactmail, :website, :address, :bankaccount_id
  json.url newsbook_url(newsbook, format: :json)
end
