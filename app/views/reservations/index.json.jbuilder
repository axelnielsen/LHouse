json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :commonRoom_id, :initDate, :finDate, :initTime, :finTime, :apartment_id
  json.url reservation_url(reservation, format: :json)
end
