@user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Shred", last_name: "Lopez")

puts "1 user created"

AdminUser.create(email: "admin@test.com", password: "password", password_confirmation: "password", first_name: "Shred", last_name: "Lopez")

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post}: Just because...", user_id: @user.id)
end

puts "100 posts created"
