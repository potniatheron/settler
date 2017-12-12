json.extract! travel, :id, :name, :description, :image_url, :price, :created_at, :updated_at
json.url travel_url(travel, format: :json)
