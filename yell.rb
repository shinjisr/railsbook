require 'sinatra'

get '/yell/:who' do 
	params[:who].upcase + "!"
end
