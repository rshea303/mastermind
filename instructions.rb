class Instructions

    def mastermind_instructions
      puts "These are the instructions for the game."
      # puts "Please pay attention to the instructions.\nA sequence of four colors is chosen by the code maker.
      # \nThe sequence can incorporate up to four different colors...
      # \nRed, blue, green, and yellow.
      # \nThe player cannot see this arrangement.
      # \nThe object of the game is for the player to match the colored sequence
      # created by the code maker.
      #
      # \n\nThe player enters a guess by typing the first letter of each color in
      # the order believed to match the code makers sequence.
      #
      # For example, a play could enter red, blue, yellow, blue.
      #
      # \nrbyb
      #
      # After each guess I will let you know the number of correct colors
      # as well as how many are in the correct location.  In our example lets imagine
      # the sequence created by the code maker is red blue blue green
      #
      # \nCodemaker sequence: rbbg
      # First guess:        rbyb
      #
      # Based on the example I will let the player know the number of correct colors
      # in their guess.  However, I won't share which ones they are.  That would be
      # a pretty boring game.  In our example the player has entered two correct colors.
      # One red and one blue.
      #
      # \nCodemaker sequence: rbbg
      # First guess:        rbyb   Correct colors = 3
      #
      #
      # I will also let the player know how many of the colors are in
      # the correct location.  In this case the players guess has a red in the first position,
      # which matches the color in the code makers sequence, and a blue in the second position,
      # which matches the color in the code makers sequence.
      #
      # \nCodemaker sequence: rbbg
      # First guess:        rbyb   Correct colors = 3  Correct location = 2
      #
      # The process is repeated until the player has guessed the correct sequence"
    end

end
