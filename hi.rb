#Sinatra is a Web Application Framework.
#http://codelikethis.com/lessons/learn_to_code/sinatra
require 'sinatra'
get '/hi/:who' do 
	"Hi " + params[:who] + "!"
end
#run ruby hi.rb
#Open a Web Browser http://localhost:4567/hi/alice