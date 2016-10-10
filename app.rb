require 'sinatra'

get '/' do
	"hello!"
end

get '/secret' do
	"secret message"
end
