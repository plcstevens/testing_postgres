# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :user do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    age { rand(10.years).ago }
  end

  factory :user_with_first_name, parent: :user do
    firstname { Faker::Name.first_name }
  end
end
