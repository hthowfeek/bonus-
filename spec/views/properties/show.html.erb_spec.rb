require 'spec_helper'

describe "properties/show" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :rooms => 1,
      :bedrooms => 2,
      :bathrooms => 3,
      :parking_allotment => false,
      :internet_included => false,
      :street_address => "MyText",
      :property_type => "Property Type",
      :owner_id => "Owner",
      :manager_id => "Manager",
      :price_per_period => 4,
      :period_type => "Period Type",
      :purpose => "Purpose",
      :owner_name => "Owner Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/Property Type/)
    rendered.should match(/Owner/)
    rendered.should match(/Manager/)
    rendered.should match(/4/)
    rendered.should match(/Period Type/)
    rendered.should match(/Purpose/)
    rendered.should match(/Owner Name/)
  end
end
