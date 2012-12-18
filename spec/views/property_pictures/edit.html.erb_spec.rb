require 'spec_helper'

describe "property_pictures/edit" do
  before(:each) do
    @property_picture = assign(:property_picture, stub_model(PropertyPicture,
      :title => "MyString",
      :property_id => 1
    ))
  end

  it "renders the edit property_picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => property_pictures_path(@property_picture), :method => "post" do
      assert_select "input#property_picture_title", :name => "property_picture[title]"
      assert_select "input#property_picture_property_id", :name => "property_picture[property_id]"
    end
  end
end
