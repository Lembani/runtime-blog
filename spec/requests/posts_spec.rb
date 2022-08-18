require 'rails_helper'

RSpec.describe 'Posts', type: :request
describe 'GET /users/:id/posts' do
  it 'returns http success status' do
    get '/users/1/posts'
    expect(response).to have_http_status(:success)
  end
  it 'renders the index template of posts' do
    get '/users/1/posts'
    expect(response).to render_template('index')
  end
  it 'renders the text in posts' do
    get '/users/1/posts'
    expect(response.body).to include('Post info')
  end
end

