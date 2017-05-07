require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "can exist" do
    customer = Customer.create(name: "Name1", secondary_name: 'name1', phone: Faker::PhoneNumber.cell_phone, email:'j@j.com')
    expect(customer.name).to eq('Name1')
  end
end
