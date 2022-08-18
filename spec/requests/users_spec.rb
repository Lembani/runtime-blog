require 'rails_helper'

RSpec.describe 'Users', type: :request
describe 'GET /' do
  it 'returns http success status' do
    get '/users'
    expect(response).to have_http_status(:success)
  end
  it 'renders the user index template' do
    get '/users'
    expect(response).to render_template('index')
  end
  it 'renders the text in post' do
    get '/users'
    expect(response.body).to include('Posts published: 9')
  end
end


