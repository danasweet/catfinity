require 'faraday'

get '/' do
  erb :'index'
end

get '/cats/new' do
  connection.get(cat_path).body
end

def connection
  Faraday.new(url: 'http://thecatapi.com')
end

def cat_path
  '/api/images/get?format=html&results_per_page=1'
end
