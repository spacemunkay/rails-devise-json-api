# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'active_record/fixtures'

if Rails.env.development?

  #create default users
  if User.all.empty?
    u = FactoryGirl.create(:user)
    FactoryGirl.create(:user_profile, user_id: u.id)
  end
elsif Rails.env.production?

  unless User.find_by_username('admin')
    #create an admin
    User.create!( :username => 'admin',
                  :first_name => 'admin',
                  :last_name => 'admin',
                  :email=>'admin@example.com',
                  :password=>'password')
  end

end
