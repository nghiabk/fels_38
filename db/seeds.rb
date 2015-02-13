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

Word.create!(content: "text1", category_id: 1)
Word.create!(content: "text2", category_id: 2)
Word.create!(content: "text3", category_id: 3)
Word.create!(content: "text4", category_id: 4)
Word.create!(content: "text5", category_id: 5)
Word.create!(content: "text6", category_id: 1)
Word.create!(content: "text7", category_id: 2)
Word.create!(content: "text8", category_id: 3)
Word.create!(content: "text9", category_id: 4)
Word.create!(content: "text10", category_id: 5)
Word.create!(content: "text11", category_id: 1)
Word.create!(content: "text12", category_id: 2)
Word.create!(content: "text13", category_id: 3)
Word.create!(content: "text14", category_id: 4)
Word.create!(content: "text15", category_id: 5)

Learn.create!(user_id: 1, word_id: 1)
Learn.create!(user_id: 1, word_id: 2)
Learn.create!(user_id: 1, word_id: 3)
Learn.create!(user_id: 1, word_id: 4)
Learn.create!(user_id: 2, word_id: 4)
Learn.create!(user_id: 2, word_id: 3)
Learn.create!(user_id: 2, word_id: 5)
Learn.create!(user_id: 2, word_id: 6)
Learn.create!(user_id: 3, word_id: 7)
Learn.create!(user_id: 3, word_id: 2)
Learn.create!(user_id: 3, word_id: 3)
Learn.create!(user_id: 4, word_id: 9)
Learn.create!(user_id: 4, word_id: 8)
Learn.create!(user_id: 4, word_id: 7)
Learn.create!(user_id: 1, word_id: 7)
Learn.create!(user_id: 1, word_id: 8)