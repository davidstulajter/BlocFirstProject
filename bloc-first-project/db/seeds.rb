
require 'faker'

#Create Users
5.times do
  user = User.new(
    email:       Faker::Internet.email,
    password:    Faker::Lorem.characters(10) 
    )
  user.skip_confirmation!
  user.save!
end
users = User.all

#Create a member
member = User.new(
  email:         'member@example.com',
  password:      'helloworld'
  )
member.skip_confirmation!
member.save!

#Create an Item
item = Item.new(
  name:        'Default to-do',
  user_id:      6
  )
item.save!
item.update_attribute(:created_at, Date.new(2015,11,17))

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"




