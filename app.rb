require 'sinatra'

set :session_secret, 'super secret'

get '/' do
	"hello!"
end

get '/secret' do
	"secret message"
end

get '/random-cat' do
	@name = ["Amigo", "Oscar", "Viking"].sample
	erb :index
end

post '/named-cat' do
	p params
	@name = params[:name]
	erb :index
end

get '/name-form' do
	erb :form
end
