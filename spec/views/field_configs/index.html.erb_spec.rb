require 'spec_helper'

describe "field_configs/index" do
  before(:each) do
    assign(:field_configs, [
      stub_model(FieldConfig,
        :field => "Field",
        :html_type => "Html Type",
        :values => "MyText",
        :default => "Default",
        :project_id => 1
      ),
      stub_model(FieldConfig,
        :field => "Field",
        :html_type => "Html Type",
        :values => "MyText",
        :default => "Default",
        :project_id => 1
      )
    ])
  end

  it "renders a list of field_configs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Field".to_s, :count => 2
    assert_select "tr>td", :text => "Html Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Default".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
