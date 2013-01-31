require 'sinatra'

get '/' do
	"Hello world!"	
end

get '/about' do
	"About me goes here!"
end

get '/hello/:name/:city' do
	"Hey there #{params[:name]} from #{params[:city]}"
end

get '/more/*' do
	params[:splat]
end

get '/form' do  
  erb :form  
end

post '/form' do
	"You said '#{params[:message]}'"
end

get '/secret' do
	erb :secret
end

post '/secret' do  
  params[:secret].reverse  
end

not_found do
	status 404
	'not found, I\'m very sorry'
end