require 'faker'

FactoryGirl.define do 
  factory :app do
     name { Faker::Name.name }
     desc { Faker::Lorem.sentence }
   end
 end