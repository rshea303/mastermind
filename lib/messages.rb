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
    "Please enter a guess:"
  end

  def game_over
    "Thank you for playing."
  end

  def valid_response
    "\nPlease enter a valid response."
  end
end
