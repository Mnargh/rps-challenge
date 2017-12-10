require './lib/player'

class Game
  attr_reader :player
  def initialize(player_name, player_class = Player)
      @player = player_class.new(player_name)
  end
end
