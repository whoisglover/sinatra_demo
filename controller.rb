require 'sinatra'
require './models/coach'

get '/' do
  coaches = "danny"
  #@ lets us access this variable in the view
  @coaches = Coach.all
  @dbc = "cool bootcamp"
  erb :index
end


get '/coaches/new' do

  erb :new

end

post '/coaches' do
  name = params[:coach_name]
  Coach.create(name)
  redirect '/'
end

delete '/coaches/:id' do
  Coach.delete(params[:id])
  p "in the delete route"
  p params

  redirect '/'
end

get '/coaches/:id' do
  #colon defines a placeholder

  #params are an implicitly defined local variable
  # {"id" => 0}
  @coach_index = params[:id]
  @coach = Coach.find(params[:id])

  erb :show
end
