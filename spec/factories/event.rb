require 'faker'

FactoryGirl.define do
  factory :event do
    ip_address   {Faker::Internet.ip_v4_address}
    action   {Faker::Lorem.word}
  end
end