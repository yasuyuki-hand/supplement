# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ユーザー登録
  
  User.create!(
    name: 'テストアカウント',
    email: 'test@supplement.jp',
    password: 'testsupple',
    password_confirmation: 'testsupple',
    nickname: 'テスト'
  )
  
  29.times do |_n|
    name     = Faker::Name.name
    email    = Faker::Internet.email
    password = 'password'
    User.create!(
      name: name,
      email: email,
      password: password,
      password_confirmation: password,
      nickname: name,
    )
  end
  
#   アイテム登録
#   30.times do |n|
#     Product.create!(
#       title: "NO.#{n}プロテイン",
#       url: "sample#{n}@supplebox.jp",
#       image_url: "sample_image#{n}@supplebox.jp",
#       asin: "code#{n}",
#     )
#   end
  
#   users = User.order(:created_at).take(6)
#   (1..30).each do |n|
#     title = Faker::Lorem.sentence(5)
#     content = Faker::Lorem.sentence
#     product_id = n.to_i
#     users.each do |user|
#       user.posts.create!(
#         title: title,
#         content: content,
#         rate: [1, 2, 3, 4, 5].sample,
#         product_id: product_id,
#       )
#     end
#   end
  
#   # リレーションシップ
#   users = User.all
#   first_user = users.first
#   following = users[2..30]
#   followers = users[3..20]
#   following.each { |followed| first_user.follow(followed) }
#   followers.each { |follower| follower.follow(first_user) }
  
#   # お気に入り登録
#   users = User.order(:created_at).take(6)
#   products = Product.all
#   users.each do |user|
#     products.each do |product|
#       user.like(product)
#     end
#   end
