require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :contact_email => "MyString",
      :contact_phone => "MyString",
      :admin => false
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_contact_email", :name => "user[contact_email]"
      assert_select "input#user_contact_phone", :name => "user[contact_phone]"
      assert_select "input#user_admin", :name => "user[admin]"
    end
  end
end
