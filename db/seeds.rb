require 'faker'
 
 # Create Users
 15.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     # password: "helloworld",
     password: Faker::Lorem.characters(10)
   )
   # user.skip_confirmation!
   user.save!
 end
 users = User.all

#Create an admin user
admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
)
admin.save

 puts "Seed finished"
 puts "#{users.count} users created"