require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.create(name: 'Jane', bio: 'Teacher in Mexico.')
  user.save

  subject do
    Post.new(title: 'Greetings', text: 'Hello Wolrd!', author: user)
  end

  before { subject.save }

  it 'should have 250 characters' do
    subject.title = 'lorem' * 255
    expect(subject).to_not be_valid
  end

  it 'should check if title is available' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'should have post counter greater or equal to zero' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'should only load the most recent 5 comments' do
    expect(subject.recent_comments).to eq(subject.comments.last(5))
  end
end
