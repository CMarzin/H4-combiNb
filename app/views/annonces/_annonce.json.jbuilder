json.extract! annonce, :id, :title, :description, :status, :creator_id, :location, :start, :end, :combi_id, :created_at, :updated_at
json.url annonce_url(annonce, format: :json)
