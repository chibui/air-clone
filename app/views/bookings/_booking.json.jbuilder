json.extract! booking, :id, :room_id, :user_id, :startdate, :enddate, :guestcount, :approved, :created_at, :updated_at
json.url booking_url(booking, format: :json)