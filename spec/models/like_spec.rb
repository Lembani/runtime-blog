require 'rails_helper'

RSpec.describe Like, type: :model do
  subject { Like.new }
  before { subject.save }

  it 'has valid attributes' do
    expect(subject).to_not be_valid
  end

  it 'belongs to a post' do
    assc = described_class.reflect_on_association(:post)
    expect(assc.macro).to eq :belongs_to
  end
end
