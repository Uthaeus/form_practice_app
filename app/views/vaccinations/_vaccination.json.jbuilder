json.extract! vaccination, :id, :title, :received, :expiration, :created_at, :updated_at
json.url vaccination_url(vaccination, format: :json)
