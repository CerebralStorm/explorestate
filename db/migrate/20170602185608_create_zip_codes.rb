class CreateZipCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :zip_codes do |t|
      t.string :value
      t.string :median_listing_price
      t.string :average_listing_price
      t.string :price_to_rent_ratio
      t.string :median_rent
      t.string :estimated_rent

      t.timestamps
    end
  end
end
