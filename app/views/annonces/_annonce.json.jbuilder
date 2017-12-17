json.extract! annonce, :id, :title, :description, :creator_id, :location, :startTime, :endTime, :combi_id, :created_at, :updated_at
json.url annonce_url(annonce, format: :json)
