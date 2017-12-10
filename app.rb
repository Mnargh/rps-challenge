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
    @player = Player.instance_of_player
    @game = Game.create_new_game
    @player.choice = params[:choice] if params[:choice] != nil
    #need to add def choice method to eliminate these
    @game.winner?
    erb :result_page
  end

  run!  if app_file == $0
end
