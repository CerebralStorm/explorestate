class CreateZipCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :zip_codes do |t|
      t.string :value
      t.float :median_listing_price
      t.float :average_listing_price
      t.float :price_to_rent_ratio
      t.float :median_rent
      t.float :estimated_rent

      t.timestamps
    end
  end
end
