require 'faker'

@employees = Array.new
10.times do |employee|
  @first_name = Faker::Name.first_name
  @last_name = Faker::Name.last_name

  @employees << User.create!(
    first_name: @first_name,
    last_name: @last_name,
    email: "#{@first_name}.#{@last_name}@abc.com",
    password: "password",
    password_confirmation: "password",
    phone: '2402717135',
    ssn: 1234,
    company: "Advisory Board"
  )
end

puts "10 employees created"

@test_user = 1.times do |test_user|
  FactoryGirl.create(:user)
end

puts "1 test user"

3.times do |admin|
  FactoryGirl.create(:admin_user)
end

puts "3 admins created"

@ted = FactoryGirl.create(:ted)

puts "1 Ted created"

AuditLog.create!(user_id: @employees.sample.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employees.sample.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employees.sample.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs created"

13.times do |post|
  Post.create!(
    date: Faker::Date.between(1.year.ago, Date.today),
    description: Faker::Seinfeld.quote,
    user_id: @employees.sample.id,
    daily_hours: rand(0.0..100.0).round(2)
  )
end

puts "13 posts created"
