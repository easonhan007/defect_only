class FieldConfig < ActiveRecord::Base
  attr_accessible :default, :field, :html_type, :project_id, :values
  belongs_to :project

  serialize :values, Array

  class << self
    def html_types
      %w[text_field text_area check_box radio_button select]
    end

    def html_options
      html_types.map {|type| [type.camelize, type]}
    end

    def has_value_fields
      %w[check_box radio_button select]
    end
  end

end

