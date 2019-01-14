100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post}: Just because...")
end

puts "100 posts created"
