json.extract! booking, :id, :startTime, :endTime, :annonce_id, :client_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
