require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Dave",
      :password => "private",
      :password_confirmation => "private",
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_password_confirmation", name: "user[password_confirmation]"
      assert_select 'input[type="submit"]', value: 'Update User'
    end
  end
end
