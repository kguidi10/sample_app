FactoryGirl.define do
sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
  	email 
  	password "123456"
  	first_name "Kristin"
  	last_name "Guidi"
  	admin false

  	factory :admin do
  	admin true
  end

  end

  
end

