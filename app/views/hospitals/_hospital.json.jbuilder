json.extract! hospital, :id, :name, :address, :city, :state, :phone_number, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
