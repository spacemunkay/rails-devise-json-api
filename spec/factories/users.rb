FactoryGirl.define do
  factory :user do

    sequence(:username) { |n| "user_#{n}" }
    sequence(:email) { |n| "user_#{n}@example.com" }
    password 'password'
    password_confirmation { password }
    first_name 'Michael'
    last_name 'Scott'

    factory :admin do
      username "admin"
      first_name 'Admin'
    end
  end
end
