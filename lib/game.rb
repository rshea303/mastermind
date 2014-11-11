require_relative 'codemaker'
require_relative 'guesschecker'
require_relative 'messages'

class Game
  attr_reader :counter, :game_message, :guess_checker, :code_maker

  def initialize
    @code_maker = CodeMaker.new
    @guess_checker = GuessChecker.new
    @game_message = Messages.new
    @counter = 0
  end

  def play_game
    @code_maker.generate_solution
    player_guess = ""
    until guess_checker.total_location_match(player_guess, code_maker.solution) == 4
      @counter += 1
      puts "\nPlease enter a guess:"
      player_guess = gets.chomp
      puts "#{code_maker.solution} Attempt: #{counter}  Correct Location: #{guess_checker.total_location_match(player_guess, code_maker.solution)}  Total Colors Correct: #{guess_checker.total_location_match(player_guess, code_maker.solution)}"
    end
     puts "Winner!"
  end
end
