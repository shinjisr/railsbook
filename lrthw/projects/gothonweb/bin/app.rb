require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do # list of URL
  return 'Hello world' # if match request, return
end

get '/hello/' do
  erb :hello_form
end

# get '/bear/' do
# 	erb :bear
# end

post '/hello/' do
  greeting = params[:greeting] || "Hi There"
  name = params[:name] || "Nobody"

  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end
