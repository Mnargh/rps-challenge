require './lib/player'

class Game
  attr_accessor :comp_choice, :who_won

  def initialize
    @possible_choices = ["Rock", "Paper", "Scissors"]
    @comp_choice = @possible_choices.sample
    @who_won = nil
  end

  def self.create_new_game
    @game = Game.new
  end

  def self.instance_of_game
    @game
  end

  def winner?( x = @player.choice)
    case (@possible_choices.index(@comp_choice) - @possible_choices.index(x))% 3
      when 0
        @who_won = "Tie"
      when 1
        @who_won = "Computer"
      when 2
        @who_won = "Player"
    end
  end
end
