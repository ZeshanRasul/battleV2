require 'sinatra'

set :session_secret, 'super secret'

get '/' do
	"hello!"
end

get '/secret' do
	"secret message"
end

get '/cat' do
	erb :index
end
