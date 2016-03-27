json.array!(@reservations) do |reservation|
  json.extract! reservation, :commonRoom_id, :initDate, :finDate, :initTime, :finTime
  json.url reservation_url(reservation, format: :json)
end
