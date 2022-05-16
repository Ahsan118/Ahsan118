json.extract! generate_appointment, :id, :created_at, :updated_at
json.url generate_appointment_url(generate_appointment, format: :json)
