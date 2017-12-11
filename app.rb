require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_entry
  end

  post '/game' do
    @player = Player.create_new_player(params[:Player])
    erb :game_page
  end

  post '/result' do
    @game = Game.create_new_game
    @player = Player.instance_of_player
    @player.choice = params[:choice]
    #need to add def choice method to eliminate these
    @game.winner?(@player.choice)
    erb :result_page
  end

  run!  if app_file == $0
end
