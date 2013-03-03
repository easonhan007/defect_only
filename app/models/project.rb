class Project < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :project_members
  has_many :members, through: :project_members
end
