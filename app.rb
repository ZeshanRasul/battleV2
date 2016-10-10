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

get '/named-cat' do
	@name = params[:name]
	erb :index
end
