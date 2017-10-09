FactoryGirl.define do
sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
  	email 
  	password "12345"
  	first_name "Kristin"
  	last_name "Guidi"
  	admin false

  end

  
end

