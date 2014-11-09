require_relative 'solution_generator'

class Game
  # attr_reader :code_maker_solution, :code_maker_array
  #
  # def initialize
  #   @code_maker_solution = 0
  #   @code_maker_array = 0
  # end

  def intro
    puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play_game
    puts "\nI have generated a beginner sequence with four elements made up of:
    \n(r)ed, (g)reen, (b)lue, and (y)ellow\nUse (q)uit at any time to end the game.
    \nPlease enter your first guess:"
  end

  def end_game
    puts "\nI'm sorry to see you go. Come back soon!"
    exit
  end
end
