require 'rails_helper'

RSpec.describe 'post_index', type: :feature do
  user = User.find_by(id: 1)
  post = user.posts.first

  before(:each) do
    visit user_posts_path(User.find_by(id: 1).id)
  end

  it 'it shows the user\'s profile picture' do
    expect(page.html).to include('user_picture')
  end

  it 'user can see the user\'s username' do
    expect(page).to have_content(user.name)
  end

  it 'user can see the user\'s number of posts' do
    expect(page).to have_content("Number of Posts: #{user.posts_counter}")
  end

  it 'user can see the post\'s title' do
    expect(page).to have_content(post.title)
  end

  it 'user can see the post\'s body' do
    expect(page).to have_content(post.text)
  end

  it 'user can see the post\'s comments' do
    expect(page.html).to include('comments')
  end

  it 'user can see the post\'s number of comments' do
    expect(page).to have_content("Comments: #{post.comments_counter}")
  end

  it 'user can see the post\'s number of likes' do
    expect(page).to have_content("Likes: #{post.likes_counter}")
  end

  it 'user can see a section for add new post' do
    expect(page).to have_content('Add new post')
  end

  it 'redirects to the post\'s page when a post is clicked' do
    click_link(post.title)
    expect(page.current_path).to eql(user_post_path(user_id: user.id, id: post.id))
  end
end
