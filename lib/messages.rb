class Messages

  def quit
    "\nGoodbye."
  end

  def mastermind_instructions
    puts "\nA sequence of colors is chosen by the code maker."
    puts "The object of the game is for the player to match the colored sequence"
    puts "created by the code maker. After each guess the code maker will let the player"
    puts "know the total number of correct colors as well as how many are in the"
    puts "correct location. Based on this feedback the player will enter a new"
    puts "guess. The process is repeated until the player has guessed the"
    puts "correct sequence."
  end

  def intro
    "\nWelcome to MASTERMIND"
  end

  def play_instructions_quit
    "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play_game_intro
    "\nI have generated a beginner sequence with four elements made up of:
    \n(r)ed, (g)reen, (b)lue, and (y)ellow\nUse (q)uit at any time to end the game.
    \nWhat's your guess?"
  end

  def enter_guess_prompt
    "\nPlease enter a guess:"
  end

  def game_over
    "Thank you for playing."
  end

  def invalid_response
    "\nPlease enter a valid guess. A valid guess has 4 total characters consisting of any combination of the letters: (r)ed, (b)lue, (g)reen, and (y)ellow."
  end

  def play_again
    "\nWould you like to play again? (y)es or (n)o"
  end
end
