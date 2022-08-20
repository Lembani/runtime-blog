# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create Users
first_user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', posts_counter: 0)
second_user = User.create!(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.', posts_counter: 0)

# Create Posts
first_post = Post.create!(author: first_user, title: 'Hello 1', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
second_post = Post.create!(author: first_user, title: 'Hello 2', text: 'This is my second post', comments_counter: 0, likes_counter: 0)
third_post = Post.create!(author: first_user, title: 'Hello 3', text: 'This is my third post', comments_counter: 0, likes_counter: 0)
fourth_post = Post.create!(author: first_user, title: 'Hello 4', text: 'This is my fourth post', comments_counter: 0, likes_counter: 0)
fith_post = Post.create!(author: first_user, title: 'Hello 5', text: 'This is my fith post', comments_counter: 0, likes_counter: 0)

# Create Comments
Comment.create!(post: first_post, author: second_user, text: 'Hi Tam!' )
Comment.create!(post: first_post, author: second_user, text: 'Hi Tem!' )
Comment.create!(post: first_post, author: second_user, text: 'Hi Tim!' )
Comment.create!(post: first_post, author: second_user, text: 'Hi Tom!' )
Comment.create!(post: first_post, author: second_user, text: 'Hi Tum!' )
Comment.create!(post: first_post, author: second_user, text: 'Hi Tomcat!' )

# Create Likes
Like.create!(author: second_user, post: first_post)
Like.create!(author: second_user, post: second_post)
