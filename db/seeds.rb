# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Project.delete_all
Defect.delete_all

tom = User.create!(
  name: 'tom',
  password_digest: BCrypt::Password.create('private')
)

defect_only = Project.create(
  name: 'defect_only',
  description: 'a test project'
)

defect_only.members << tom

tom.defects << Defect.create!(title: 'first bug by tom', description: 'a big bug')
