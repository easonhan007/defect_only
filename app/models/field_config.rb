class FieldConfig < ActiveRecord::Base
  attr_protected :field
  belongs_to :project

  serialize :values, Array

  validate :at_least_one_value, if: :with_options?
  validate :default_should_in_values, if: :need_check_default?
  validates :name, :html_type, :project_id, presence: true
  validates :description,length:{maximum: 100}, unless: 'description.blank?'

  before_create :select_field
  before_validation :strip_empty_value

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
  end #self


  private
    
    def need_check_default?
      with_options? and !default.blank?
    end

    def with_options?
      FieldConfig.has_value_fields.include?(html_type) 
    end

    def default_should_in_values
      if !default.blank? and !values.include?(default) 
        errors.add :default, 'should be in values'
      end
    end

    def at_least_one_value
      if values.blank?
        errors.add :values, 'at leat need one value'
      end
    end
    
    def select_field
      p = Project.find(project_id)
      return false unless p.has_rest_fields?
      write_attribute :field, p.rest_fields.first
    end

    def strip_empty_value
      cleared = values.reject { |v| v.blank? }
      write_attribute(:values, cleared)
    end

end

