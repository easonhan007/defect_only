require 'spec_helper'

describe "field_configs/edit" do
  before(:each) do
    @field_config = assign(:field_config, stub_model(FieldConfig,
      :field => "MyString",
      :html_type => "MyString",
      :values => "MyText",
      :default => "MyString",
      :project_id => 1
    ))
  end

  it "renders the edit field_config form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => field_configs_path(@field_config), :method => "post" do
      assert_select "input#field_config_field", :name => "field_config[field]"
      assert_select "input#field_config_html_type", :name => "field_config[html_type]"
      assert_select "textarea#field_config_values", :name => "field_config[values]"
      assert_select "input#field_config_default", :name => "field_config[default]"
      assert_select "input#field_config_project_id", :name => "field_config[project_id]"
    end
  end
end
