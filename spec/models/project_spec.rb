require 'spec_helper'

describe Project do
  fixtures :field_configs
  fixtures :projects

  context 'field configs not empty' do
    before :each do
      projects(:one).field_configs << field_configs(:one)
      projects(:one).field_configs << field_configs(:two)
    end

    it 'predefined_fields should be correct' do
      fields = %w[field1 field2 field3 field4 field5]
      Project.predefined_fields.should eql(fields)
    end
    
    it 'used fields should be correct' do
      projects(:one).used_fields.should eql %w[field1 field2]
    end

    it 'rest fields should be correct' do
      projects(:one).rest_fields.should eql %w[field3 field4 field5]
    end

    it 'rest fields should be empty' do
      projects(:one).field_configs << field_configs(:three)
      projects(:one).field_configs << field_configs(:four)
      projects(:one).field_configs << field_configs(:five)
      projects(:one).rest_fields.should eql []
    end
  end #context

  context 'field configs empty' do
    it 'used fields should be correct' do
      projects(:two).used_fields.should eql []
    end

    it 'rest fields should be correct' do
      projects(:one).rest_fields.should eql Project.predefined_fields
    end
  end

end #describe
