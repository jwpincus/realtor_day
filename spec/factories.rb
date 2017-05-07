FactoryGirl.define do
  factory :property do
    street_address "123 anywhere"
    city "Bellingham"
    zip_code "90001"
    state "WA"
    realtor nil
  end
  factory :customer do
    name "name1"
    secondary_name "name2"
    phone "303 3333333"
    email "j@j.com"
    realtor nil
  end
  factory :realtor do
    name Faker::Name.name
    phone Faker::PhoneNumber.cell_phone
    email 'sample@sample.com'
    agency
  end

  factory :agency do
    name Faker::Company.name
  end
end
