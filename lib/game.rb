require_relative 'codemaker'
require_relative 'guesschecker'
require_relative 'messages'
require_relative 'game'
require_relative 'guess_validation'

class Game
  attr_reader :counter, :game_message, :guess_checker, :code_maker

  def initialize
    @code_maker = CodeMaker.new
    @guess_checker = GuessChecker.new
    @game_message = Messages.new
    @counter = 0
  end

  def play_game
    start_time = Time.now
    @code_maker.generate_solution
    player_guess = ""
    until guess_checker.location_match(player_guess, code_maker.solution) == 4
      @counter += 1
      print "\nPlease enter a guess:"
      print "\n> "
      player_guess = gets.chomp
        until GuessValidation.new(player_guess).valid_answer_check?
          puts "\nPlease enter a valid response"
          print "\n> "
          player_guess = gets.chomp
        end
      puts "#{code_maker.solution} Attempt: #{counter}  Correct Location: #{guess_checker.location_match(player_guess, code_maker.solution)}  Total Correct Colors: #{guess_checker.total_correct_colors(player_guess, code_maker.solution)}"
    end
    finish_time = Time.now
    puts "Congratulations! You guessed the sequence '#{code_maker.solution.upcase}' in #{counter} guesses over #{finish_time - start_time}."
    puts "\nWould you like to play again? (y)es or (n)o"
    print "> "
    answer = gets.chomp.downcase
      if answer == "y" || answer == "yes"
        Game.new.play_game
      elsif
        puts "\nGoodbye!"
        exit
      end
  end
end
