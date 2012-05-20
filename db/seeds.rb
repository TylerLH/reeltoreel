# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(:title => 'Admin')

RoleUser.create(:user_id => User.find_by_email('scott@synaptian.com'),:role_id => Role.find_by_title(:Admin))
