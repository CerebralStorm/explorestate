json.extract! lead, :id, :parcel_number, :address, :city, :state, :zip, :status, :lead_type, :created_at, :updated_at
json.url lead_url(lead, format: :json)
