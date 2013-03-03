require 'spec_helper'

describe "defects/show" do
  before(:each) do
    @defect = assign(:defect, stub_model(Defect,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
