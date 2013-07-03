require 'sinatra'
require 'carmen'

# INDEX

get '/' do 
  redirect '/countries'
end

get '/countries' do
  @countries = Carmen::Country.all
  erb :index
end

# We could do this, but of course it's silly. 
#  See public folder for static/public assets
# get 'style.css' do
#   "h1 {color: red}"
# end

# SHOW
get '/countries/:code' do
  @country = Carmen::Country.coded(params[:code])
  erb :show
end 

