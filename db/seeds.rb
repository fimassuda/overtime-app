@user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Jon", last_name: "Snow")

puts "User created"

AdminUser.create(email: "admin@test.com", password: "password", password_confirmation: "password", first_name: "Admin", last_name: "User")

puts "Admin User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"