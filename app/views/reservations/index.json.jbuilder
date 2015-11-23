json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :name, :start_datetime, :end_datetime
  json.url reservation_url(reservation, format: :json)
end
