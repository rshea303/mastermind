require_relative 'codemaker'
require_relative 'guesschecker'
require_relative 'messages'
require_relative 'game'
require_relative 'guess_validation'

class Game
  attr_reader :counter, :game_message, :guess_checker, :code_maker, :player_guess

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
      puts game_message.enter_guess_prompt
      print "> "
      player_guess = gets.chomp
        until GuessValidation.new(player_guess).valid_answer_check?
          puts game_message.valid_response
          print "> "
          player_guess = gets.chomp
        end
      #puts "#{solution} Attempt: #{counter}  '#{player_guess.upcase}' has #{colors} of the correct elements with #{positions} in the correct position."
      puts "#{solution} Attempt: #{counter}  '#{player_guess.upcase}' has #{guess_checker.total_correct_colors(player_guess, code_maker.solution)} of the correct elements with #{guess_checker.location_match(player_guess, code_maker.solution)} in the correct positions."
    end
    finish_time = Time.now
    time_elapse = finish_time - start_time
    minutes = time_elapse.to_i / 60
    seconds = time_elapse.to_i % 60
    puts "\nCongratulations! You guessed the sequence '#{code_maker.solution.upcase}' in #{counter} guesses over #{minutes} minutes, #{seconds} seconds."
    puts game_message.play_again
    print "> "
    answer = gets.chomp.downcase
      if answer == "y" || answer == "yes"
        Game.new.play_game
      elsif
        puts game_message.quit
        exit
      end
  end

  #private

  def solution
    code_maker.solution
  end
  #
  def colors
    guess_checker.total_correct_colors(player_guess, code_maker.solution)
  end
  #
  # def positions
  #   guess_checker.location_match(player_guess, code_maker.solution)
  # end

  # def game_message
  #   puts game_message.turn_result(solution, counter, player_guess, colors, positions)
  # end
end
