require 'bundler'
Bundler.require
require 'data_mapper'

require_relative 'models/init'

get '/login' do

    erb :login
end

  get '/' do
  @movies = Movie.all
  erb :index
end

get '/movies/:id' do
  @movie = Movie.find { |movie| movie.id.to_s == params[:id] }
  erb :show
end

get '/movies/:id/update' do
  @movies =Movie.all
  erb :update
end

get '/movies/:id/download' do
  @movies =Movie.all
  erb :download
end


delete '/movies/:id/delete' do
  Movie.get(params[:id]).destroy
  redirect to("/")
end

put '/movies/:id/modify' do
  @movie=Movie.find { |movie| movie.id.to_s == params[:id] }
  p params

  @movie.name = params["name"]
  @movie.director = params["director"]
  @movie.year = params["year"]
  @movie.save
  redirect("/movies/#{params[:id]}/update")
end

get '/movies/:id/modify/' do
  @movie=Movie.find { |movie| movie.id.to_s == params[:id] }
  slim :modify
end
