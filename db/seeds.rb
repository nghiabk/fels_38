User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
              email: email,
              password:              password,
              password_confirmation: password)
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

Category.create!(name:  "Basic 500")
Category.create!(name:  "Restaurant")
Category.create!(name:  "Tree")
Category.create!(name:  "On a trip")
Category.create!(name:  "Advance 1000")

50.times do |n|
  content = "japanese#{n+1}"
  category_id = Random.new.rand 1..5
  Word.create!(content: content, category_id: category_id)
end

50.times do |n|
    content = "vietnamese#{n+1}"
    Answer.create!(content: content, word_id: n+1, correct: true)
end

3.times do |m|
  50.times do |n|
      content = "vietnamese#{m+n+30}"
      Answer.create!(content: content, word_id: n+1, correct: false)
  end
end

10.times do |n|
  Learn.create!(user_id: n+1, word_id: n+1)
end

13.times do |n|
  content = "Bai#{n+1}"
  category_id = Random.new.rand 1..5
  Lesson.create!(name: content, user_id: n+1, category_id: category_id)
end
