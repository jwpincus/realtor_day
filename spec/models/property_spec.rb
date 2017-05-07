require 'rails_helper'

RSpec.describe Property, type: :model do
  it 'can exist' do
    realtor = create(:realtor)
    property = realtor.properties.create(street_address: "1", city: "Denver", zip_code: '80218', state: 'WA')
    expect(Property.all.first).to eq(property)
  end
end
