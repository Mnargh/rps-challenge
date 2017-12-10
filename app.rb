require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_entry
  end

  post '/game' do
    p params[:Player]
    @player = Player.create_new_player(params[:Player])
    erb :game_page
  end

  get '/result' do
    @player = Player.instance_of_player
    @player.choice = "Rock" if params[:rock] != nil
    @player.choice = "Scissors" if params[:scissors] != nil
    @player.choice = "Paper" if params[:paper] != nil
    erb :result_page
  end

  run!  if app_file == $0
end
