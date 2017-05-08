# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
agency = Agency.create(name: "Bellingham Generic Realtors")
realtor = agency.realtors.create(name: 'Jack Pincus', phone: '303-887-7673', email: 'jwpincus@gmail.com')
30.times do
  realtor.customers.create(name: Faker::GameOfThrones.character, phone: "123-456-7780", email: 'customer@fake.com')
  Property.create(street_address: Faker::Address.street_address, city: Faker::Address.city, zip_code: Faker::Address.zip, state: Faker::Address.state_abbr)
end

50.times do
  realtor.showings.create(customer_id: Customer.all.sample.id, property_id: Property.all.sample.id)
end
