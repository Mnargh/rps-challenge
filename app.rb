require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    "Welcome to the home page"
  end

  run!  if app_file == $0
end
