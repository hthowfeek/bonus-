require 'spec_helper'

describe "property_pictures/show" do
  before(:each) do
    @property_picture = assign(:property_picture, stub_model(PropertyPicture,
      :title => "Title",
      :property_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
  end
end
