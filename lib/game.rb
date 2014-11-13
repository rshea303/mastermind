require_relative 'codemaker'         # => true, false
require_relative 'guesschecker'      # => true, false
require_relative 'messages'          # => true, false
require_relative 'game'              # => false, true
require_relative 'guess_validation'  # => true, false

class Game
  attr_reader :counter,
              :game_message,
              :guess_checker,
              :solution,
              :player_guess,
              :start_time  # => nil, nil

  def initialize
    @solution = CodeMaker.new.generate_solution
    @guess_checker = GuessChecker.new
    @game_message = Messages.new
    @counter = 0
    @start_time = Time.now
    @player_guess = player_guess
  end

  def play_game
    player_guess = ''
      until win?
        puts game_message.enter_guess_prompt
        print "> "
        player_guess = gets.chomp
        game_over if player_guess == 'q' || player_guess == 'quit'
        @counter += 1
        until GuessValidation.new(player_guess).valid_answer_check?
          puts game_message.invalid_response
          print "> "
          player_guess = gets.chomp.downcase
          game_over if player_guess == 'q' || player_guess == 'quit'
        end
        codemaker_feedback(player_guess)
      end
      finish_time = Time.now
      winner(start_time, finish_time)
  end

  def game_over
    puts game_message.quit
    exit
  end

  def quit?(player_guess)
    player_guess == "q" || player_guess == "quit"
  end

  def win?
    player_guess == solution
  end

  def winner(start_time, finish_time)
    time_elapse = finish_time - start_time
    minutes = time_elapse.to_i / 60
    seconds = time_elapse.to_i % 60
    puts "\nCongratulations! You guessed the sequence '#{solution.upcase}' in #{counter} guesses over #{minutes} minutes, #{seconds} seconds."
    play_again?
  end

  def play_again?
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

  def codemaker_feedback(guess)
    puts " '#{solution.upcase}' = solution" #this is just for guess verification during manual testing
    puts " '#{guess.upcase}' has #{colors(guess, solution)} of the correct elements with #{positions(guess, solution)} in the correct positions."
    if counter == 1
      puts " You've taken #{counter} guess"
    else
      puts " You've taken #{counter} guesses"
    end
  end

  private  # => Game, Game

  def colors(guess, solution)
    guess_checker.total_correct_colors(guess, solution)
  end

  def positions(guess, solution)
    guess_checker.location_match(guess, solution)
  end

  #def game_message
  #   puts game_message.codemaker_feedback(solution, counter, player_guess, colors, positions)
  # end
end
