class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :parcel_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :status
      t.string :lead_type

      t.timestamps
    end
  end
end
