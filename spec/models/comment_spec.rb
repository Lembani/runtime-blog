require 'rails_helper'

RSpec.describe Comment, type: :model do
  author = User.new(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Bio', posts_counter: 0)
  post = Post.new(title: 'Hi post', text: 'This is my first post', author:, likes_counter: 0, comments_counter: 0)
  post.save!

  commentor = User.new(name: 'Tim', photo: 'cool photo link', bio: 'Bio', posts_counter: 0)
  commentor.save!

  post.comments.create!(text: 'Say hi', author: commentor)
  post.comments.create!(text: 'Say hello', author: commentor)
  post.comments.create!(text: 'Say bye', author: commentor)
  it 'adds a comment' do
    expect(post.comments.length).to eql(3)
  end
end
