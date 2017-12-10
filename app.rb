require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_entry
  end

  post '/game' do
    @player_name = params[:Player]
    erb :game_page
  end

  get '/result' do
    @player_choice = params[:rock] if params[:rock] != nil
    @player_choice = params[:scissors] if params[:scissors] != nil
    @player_choice = params[:paper] if params[:paper] != nil
    erb :result_page
  end

  run!  if app_file == $0
end
