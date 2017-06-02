FactoryGirl.define do
  factory :lead do
    user
    parcel_number "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip_code
    status Lead::NEW_STATUS
    lead_type "MyString"
  end
end
