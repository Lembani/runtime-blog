require 'rails_helper'

RSpec.describe 'post_show', type: :feature do
  user = User.find_by(id: 1)
  post = user.posts.first

  before(:each) do
    visit user_post_path(user.id, post.id)
  end

  it 'can see the post\'s title' do
    expect(page).to have_content(post.title)
  end

  it 'can see the post\'s author name' do
    expect(page).to have_content(user.name)
  end

  it 'can see the name of the commenter' do
    person_id = post.comments.first.author_id
    person = User.find(person_id).name
    expect(page).to have_content(person)
  end

  it 'can see the post\'s number of comments' do
    expect(page).to have_content("Comments: #{post.comments_counter}")
  end

  it 'can see the post\'s number of likes' do
    expect(page).to have_content("Likes: #{post.likes_counter}")
  end

  it 'can see the post\'s body' do
    expect(page).to have_content(post.text)
  end

  it 'can see the comment\'s text' do
    expect(page).to have_content(post.recent_comments.first.text)
  end
end
