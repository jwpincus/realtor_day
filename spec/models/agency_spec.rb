require 'rails_helper'

RSpec.describe Agency, type: :model do
  it 'can exist' do
    agency = Agency.create(name: "agency")
    expect(agency.name).to eq('agency')
  end
  it 'can have realtors' do
    agency = Agency.create(name: "agency")
    realtor = agency.realtors.create(name: 'Jack', phone: '303 887 7673', email: 'jwpincus@gmail.com')
    expect(agency.realtors.first).to eq(realtor)
  end
  it 'can have customers through realtors' do
    realtor = create(:realtor)
    agency = realtor.agency
    customer = realtor.customers.create(name: 'Eric', phone: '12345674', email: 'j@j.com')
    expect(agency.customers.count).to eq(1)
    expect(agency.customers.first).to eq(customer)    
  end

end
