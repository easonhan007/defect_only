class FieldConfig < ActiveRecord::Base
  attr_accessible :default, :field, :html_type, :project_id, :values
  belongs_to :project

  serialize :values, Array

end

