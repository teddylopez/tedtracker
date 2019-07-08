require 'faker'

FactoryBot.define do
	sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email { generate :email }
    password "password"
    password_confirmation "password"
		phone '2402717135'
		ssn 1234
		company "Advisory Board"
  end

  factory :admin_user, class: "AdminUser" do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email { generate :email }
    password "password"
    password_confirmation "password"
		phone '2402717135'
		ssn 1234
		company "Advisory Board"
  end

	factory :ted, class: "AdminUser" do
		first_name "Ted"
		last_name "Lopez"
		email "tedmlopez@gmail.com"
		password "password"
		password_confirmation "password"
		phone '2402717135'
		ssn 1234
		company "Advisory Board"
	end

	factory :non_authorized_user, class: "User" do
		first_name Faker::Name.first_name
		last_name Faker::Name.last_name
		email { generate :email }
		password "password"
		password_confirmation "password"
		phone '2402717135'
		ssn 1234
		company "Advisory Board"
	end

end
