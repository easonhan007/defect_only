require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "Sam",
      :password => "private",
      :password_confirmation => "private"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_password_confirmation", name: "user[password_confirmation]"
      assert_select 'input[type="submit"]', value: 'Create User'
    end
  end
end
