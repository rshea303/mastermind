require_relative 'codemaker'

class Game
  attr_reader :player_guess

  def initialize
    @player_guess = 'xxxx'
  end

  def play_game
    puts "\nPlease enter a guess:"
    player_guess = gets.chomp

    code_maker = CodeMaker.new
    code_maker.generate_solution
    guess_checker = GuessChecker.new
    puts "\nPlayer guess: #{player_guess}"
    puts "Solution:     #{code_maker.solution}"
    puts "\nYou have #{guess_checker.total_location_match(player_guess, code_maker.solution)} colors in the right location."
    puts "You have #{guess_checker.total_correct_colors(player_guess, code_maker.solution)} total correct colors."
    end
end
