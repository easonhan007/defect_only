class Usersdefect < ActiveRecord::Base
  attr_accessible :defect_id, :user_id
  belongs_to :user
  belongs_to :defect
end
