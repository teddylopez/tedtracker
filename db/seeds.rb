@user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Shred", last_name: "Lopez")

puts "1 user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post}: Just because...", user: @user)
end

puts "100 posts created"
