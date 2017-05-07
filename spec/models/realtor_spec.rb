require 'spec_helper'

describe 'A realtor' do
  it 'can be created' do
    realtor = Realtor.create(name: 'Jack', phone: '303 887 7673', email: 'jwpincus@gmail.com')
    expect(realtor.name).to eq('Jack')
    expect(realtor.phone).to eq('303 887 7673')
    expect(realtor.email).to eq('jwpincus@gmail.com')
  end
  it 'can belong to an agency' do
    realtor = Realtor.create(name: 'Jack', phone: '303 887 7673', email: 'jwpincus@gmail.com')
    realtor.agency = Agency.create(name: 'Jones Agency')
    expect(realtor.agency.name).to eq('Jones Agency')
  end
  it 'can have customers' do
    realtor = create(:realtor)
    customer = realtor.customers.create(name: 'Eric', phone: '12345674', email: 'j@j.com')
    expect(realtor.customers.count).to eq(1)
    expect(realtor.customers.first).to eq(customer)
  end
end
