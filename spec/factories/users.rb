FactoryGirl.define do
	sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'Shred'
    last_name 'Lopez'
    email { generate :email }
    password "password"
    password_confirmation "password"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password "password"
    password_confirmation "password"
  end

	factory :non_authorized_user, class: "User" do
		first_name 'Non'
		last_name 'Lopez'
		email { generate :email }
		password "password"
		password_confirmation "password"
	end

end
