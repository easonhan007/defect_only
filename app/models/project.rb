class Project < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :project_members
  has_many :members, through: :project_members, source: :user
  has_many :defects, through: :members
  has_many :field_configs

  class << self
    def predefined_fields
      Defect.predefined_fields
    end
  end #self

  def used_fields
    fields = []
    return fields if field_configs.blank?
    
    field_configs.each do |config|
      fields << config.field unless config.field.blank?
    end #each

    sort fields
  end

  def rest_fields
    fields = Project.predefined_fields - used_fields
    sort fields
  end

  def has_rest_fields?
    !rest_fields.blank?
  end

  private
    def sort fields
      fields.sort do |x,y|
        x.sub('field','').to_i <=> y.sub('field', '').to_i
      end #sort
    end

end

