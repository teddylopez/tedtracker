require 'faker'

@employees = Array.new
18.times do |employee|
  @employees << FactoryGirl.create(:user)
end

puts "18 employees created"

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
