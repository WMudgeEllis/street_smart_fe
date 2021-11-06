json.extract! hazard, :id, :title, :latitude, :longitude, :created_at, :updated_at
json.url dashboard_url(hazard, format: :json)
