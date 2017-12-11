require './lib/game'

class Player
  attr_accessor :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def self.create_new_player(player_name)
    @player = Player.new(player_name)
  end

  def self.instance_of_player
    @player
  end


  # def choose(item)
  #   @choice = item
  # end
end
