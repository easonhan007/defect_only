require 'spec_helper'

describe "field_configs/show" do
  before(:each) do
    @field_config = assign(:field_config, stub_model(FieldConfig,
      :field => "Field",
      :html_type => "Html Type",
      :values => "MyText",
      :default => "Default",
      :project_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Field/)
    rendered.should match(/Html Type/)
    rendered.should match(/MyText/)
    rendered.should match(/Default/)
    rendered.should match(/1/)
  end
end
