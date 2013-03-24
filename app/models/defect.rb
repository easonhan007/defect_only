class Defect < ActiveRecord::Base

  attr_accessible :description, :title
  has_many :usersdefects
  has_many :posters, through: :usersdefects, source: :users

  class << self
    def predefined_fields
      column_names.select { |f| f.match /field\d+/ } 
    end
  end #self

end #class
