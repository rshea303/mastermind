class Game

  def play_game
    puts "\nExcellent decision!!!"
    %x( say "Excellent decision")

    puts "\nI have generated a beginner sequence with four elements made up of:
    \n(r)ed, (g)reen, (b)lue, and (y)ellow\nUse (q)uit at any time to end the game.
    \nWhat's your guess?"
    %x( say "I have generated a beginner sequence with four elements made up of:
    \nred, green, blue, and yellow\n.....Use quit at any time to end the game.
    \nWhat's your guess?")
  end

  def mastermind_instructions
    %x( say "Please pay attention to the instructions.  A sequence of four colors
    is chosen by the code maker. The sequence can incorporate up to four different colors.
    The code breaker cannot see this arrangement.  The four colors are red, blue, green, and yellow.
    The object of the game is for the code breaker to match the colored sequence created by the code
    maker.

    The code breaker enters their first guess.
    Enter the first letter of each color in the order
    you believe matches the code maker's sequence.

    For example, you could enter red red yellow blue.")

    puts "\nrryb"

    %x( say "After each guess I will let you know the number of correct colors
    as well as how many are in the correct location.  In our example lets imagine
    the sequed created by the code maker is red blue blue green")

    puts "\nCodemaker sequence: rbbg"
    puts "First guess:        rryb"

    %x( say "Based on the example I would let you know that you have two correct colors.
    One red and one blue.  I would also let you know that one of the colors is
    is the correct location.  In this case the guess has a red in the first position,
    which matches the code maker sequence")

    %x( say "The process is repeated until  you have guessed the correct sequence")
    end

  def end_game
    puts "\nI'm sorry to see you go. Come back soon!"
    %x( say "I'm sorry to see you go. Come back soon!")
    exit
  end
end
