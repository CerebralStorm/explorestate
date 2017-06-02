class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.integer :user_id, index: true
      t.integer :zip_code_id, index: true
      t.string :parcel_number
      t.string :address
      t.string :city
      t.string :state
      t.string :status
      t.string :lead_type
      t.float :price
      t.float :value

      t.timestamps
    end
  end
end
