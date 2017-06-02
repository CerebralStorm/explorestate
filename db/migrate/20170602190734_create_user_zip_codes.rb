class CreateUserZipCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_zip_codes do |t|
      t.integer :user_id, index: true
      t.integer :zip_code_id, index: true

      t.timestamps
    end
  end
end
