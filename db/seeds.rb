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

Word.create!(content: "vietnamese1", category_id: 1)
Word.create!(content: "vietnamese2", category_id: 2)
Word.create!(content: "vietnamese3", category_id: 3)
Word.create!(content: "vietnamese4", category_id: 4)
Word.create!(content: "vietnamese5", category_id: 5)
Word.create!(content: "vietnamese6", category_id: 1)
Word.create!(content: "vietnamese7", category_id: 2)
Word.create!(content: "vietnamese8", category_id: 3)
Word.create!(content: "vietnamese9", category_id: 4)
Word.create!(content: "vietnamese10", category_id: 5)
Word.create!(content: "vietnamese11", category_id: 1)
Word.create!(content: "vietnamese12", category_id: 2)
Word.create!(content: "vietnamese13", category_id: 3)
Word.create!(content: "vietnamese14", category_id: 4)
Word.create!(content: "vietnamese15", category_id: 5)

Answer.create!(content: "japanese1", word_id: 1)
Answer.create!(content: "japanese2", word_id: 2)
Answer.create!(content: "japanese3", word_id: 3)
Answer.create!(content: "japanese4", word_id: 4)
Answer.create!(content: "japanese5", word_id: 5)
Answer.create!(content: "japanese6", word_id: 6)
Answer.create!(content: "japanese7", word_id: 7)
Answer.create!(content: "japanese8", word_id: 8)
Answer.create!(content: "japanese9", word_id: 9)
Answer.create!(content: "japanese10", word_id: 10)
Answer.create!(content: "japanese11", word_id: 11)
Answer.create!(content: "japanese12", word_id: 12)

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

Lesson.create!(name: "bai1", user_id: 1, category_id: 1)
Lesson.create!(name: "bai2", user_id: 1, category_id: 1)
Lesson.create!(name: "bai3", user_id: 1, category_id: 1)
Lesson.create!(name: "bai4", user_id: 1, category_id: 1)
Lesson.create!(name: "bai5", user_id: 1, category_id: 1)
Lesson.create!(name: "bai6", user_id: 1, category_id: 1)
Lesson.create!(name: "bai7", user_id: 1, category_id: 1)
Lesson.create!(name: "bai8", user_id: 1, category_id: 1)
Lesson.create!(name: "bai9", user_id: 1, category_id: 1)
Lesson.create!(name: "bai10", user_id: 1, category_id: 1)
Lesson.create!(name: "bai11", user_id: 2, category_id: 1)
Lesson.create!(name: "bai12", user_id: 2, category_id: 1)
Lesson.create!(name: "bai13", user_id: 2, category_id: 1)