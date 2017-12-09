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
  run!  if app_file == $0
end
