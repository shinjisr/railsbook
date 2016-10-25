require 'sinatra'

get '/hi/:who' do 
	"Hi " + params[:who] + "!"
end
