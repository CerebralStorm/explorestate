class ZipCode < ApplicationRecord
  has_many :user_zip_codes
  has_many :users, through: :user_zip_codes
end
