require 'spec_helper'

describe "defects/edit" do
  before(:each) do
    @defect = assign(:defect, stub_model(Defect,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit defect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => defects_path(@defect), :method => "post" do
      assert_select "input#defect_title", :name => "defect[title]"
      assert_select "textarea#defect_description", :name => "defect[description]"
    end
  end
end
