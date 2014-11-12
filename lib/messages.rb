require_relative 'guesschecker'

class Messages

  def quit
    "\nGoodbye."
  end

  def intro
    "\nWelcome to MASTERMIND"
  end

  def play_instructions_quit
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play_game_intro
    "\nI have generated a beginner sequence with four elements made up of:
    \n(r)ed, (g)reen, (b)lue, and (y)ellow\nUse (q)uit at any time to end the game.
    \nPlease enter your first guess:"
  end

  def enter_guess_prompt
    puts "\nPlease enter a guess:"
    print "> "
  end

  def game_over
    "Thank you for playing."
  end

  def valid_response
    puts "\nPlease enter a valid response.\n4 total characters consisting of the letters:\n(r)ed, (b)lue, (g)reen, and (y)ellow."
    print "> "
  end

  def play_again
    puts "\nWould you like to play again? (y)es or (n)o"
    print "> "
  end
end
