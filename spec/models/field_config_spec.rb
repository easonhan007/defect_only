require 'spec_helper'

describe FieldConfig do
  it 'record should invalid without name' do
    without(:name).should be_invalid
  end

  it 'record should invalid without project_id' do
    without(:project_id).should be_invalid
  end

  it 'record should invalid without html_type' do
    without(:html_type).should be_invalid
  end

  it 'at least has one value when html type with options' do
    r = new_recored
    r.html_type = 'check_box'
    r.values = ['', '', '']
    r.should be_invalid
    
    r.values = ['', '']
    r.should be_invalid

    r.values = ['']
    r.should be_invalid
  end

  it 'default should in values' do
    r = new_recored
    r.html_type = 'select'
    r.values = %w[v1 v2]
    r.should be_valid

    r.default = 'v3'
    r.should be_invalid
  end

  def without(field=nil)
    record = { name: 'test',
      project_id: 1,
      html_type: 'text_field' }
    FieldConfig.new record.reject { |k,v| k == field } 
  end
  alias_method :new_recored, :without

end
