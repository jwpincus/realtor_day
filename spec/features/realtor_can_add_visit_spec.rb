require 'spec_helper'
describe "A user wants to log a visit" do
  before :each do
    @customer = create(:customer)
    @realtor = create(:realtor)
    @property = create(:property, realtor: @realtor)
  end
  it 'they can add a visit using form' do
    visit '/showings/new'
    select(@customer.name, from: 'showing[customer_id]')
    select(@property.street_address, from: 'showing[property_id]')
    click_on 'log showing'

    expect(page).to have_content("Succesfully logged showing for #{@customer.name}")
    expect(Showing.all.count).to eq(1)
  end
end
