require 'spec_helper'

describe Defect do

  it 'predefined_fields should be correct' do
    fields = %w[field1 field2 field3 field4 field5]
    Defect.predefined_fields.should eq(fields) 
  end
end
