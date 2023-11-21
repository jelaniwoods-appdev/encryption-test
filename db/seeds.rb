# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


["alice", "bob", "carol"].each do |name|
  user = User.find_or_create_by(email: "#{name}@example.com", name: name)
end
User.update(password: "password")
Post.destroy_all
User.all.each do |user|
  rand(3..8).times do |i|
    desc = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    user.posts.create(title: "user.name#{i}", description: desc)
  end
end
