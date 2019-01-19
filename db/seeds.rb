@user = User.create(email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Shred",
  last_name: "Lopez",
  phone: '1234567890')

puts "1 user created"

AdminUser.create(email: "admin@test.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Shred",
  last_name: "Lopez",
  phone: '1234567890')

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post}: Just because...", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts created"

100.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs created"
