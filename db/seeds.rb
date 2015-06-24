User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar", admin: true,
             activated: true, activated_at: Time.zone.now)

User.create(name: "Vu Minh Duc", email: "dev.ducvu@gmail.com", 
                    password: "abc123", password_confirmation: "abc123", admin: true,
                    activated: true, activated_at: Time.zone.now)
40.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
20.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end