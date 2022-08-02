json.extract! user, :id, :predio_id, :fecha_ini, :fecha_fin, :status, :name, :note, :created_at, :updated_at
json.url user_url(user, format: :json)
