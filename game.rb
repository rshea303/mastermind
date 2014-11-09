require_relative 'solution_generator'

class Game
  attr_reader :player

  def initialize
    @player = Player.new
  end

  def intro
    puts "Welcome to MASTERMIND!"
    puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play_game
    puts "\nI have generated a beginner sequence with four elements made up of:
    \n(r)ed, (g)reen, (b)lue, and (y)ellow\nUse (q)uit at any time to end the game.
    \nPlease enter your first guess:"
    # player_guess_string = gets.chomp.downcase
    # @player.player_guess(player_guess_string)
    # @player.player_color_count(@player.player_guess_array)
    # puts @player.player_guess_array
    # puts @player.player_guess_color_count
  end

  def end_game
    puts "\nI'm sorry to see you go. Come back soon!"
    exit
  end
end
