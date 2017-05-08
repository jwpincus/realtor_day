require 'rails_helper'

RSpec.describe Showing, type: :model do
  it 'can be created' do
    realtor = create(:realtor)
    customer = create(:customer)
    property = create(:property)
    showing = Showing.create(realtor: realtor, customer: customer, property: property)
    expect(Showing.count).to eq(1)
  end
end
