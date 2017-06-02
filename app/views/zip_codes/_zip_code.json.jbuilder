json.extract! zip_code, :id, :value, :median_listing_price, :average_listing_price, :price_to_rent_ratio, :median_rent, :estimated_rent, :created_at, :updated_at
json.url zip_code_url(zip_code, format: :json)
