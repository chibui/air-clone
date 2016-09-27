json.extract! room, :id, :description, :accommodates, :bathroom, :price, :kitchen, :internet, :pets, :user_id, :name, :created_at, :updated_at
json.url room_url(room, format: :json)