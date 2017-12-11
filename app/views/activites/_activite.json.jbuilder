json.extract! activite, :id, :titre, :description, :location, :created_at, :updated_at
json.url activite_url(activite, format: :json)
