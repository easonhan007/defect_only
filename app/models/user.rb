class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, 
                  :password, :password_confirmation

  has_many :project_members
  has_many :projects, through: :project_members

  has_many :usersdefects
  has_many :defects, through: :usersdefects

  has_secure_password
end
