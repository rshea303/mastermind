puts "Welcome to MASTERMIND"
puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

response = gets.chomp.downcase

if response == "p" || "play"
  #then start game
elsif
  response == "i" || "instructions"
  #present instructions to read
elsif
  response == "q" || "quit"
  # quit the game
else
  puts "Please enter a valid response."
end

puts "\nI have generated a beginner sequence with four elements made up of:
(r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game.
\nWhat's your guess?"

# puts "'#{user_attempt}' has #{colors_correct} of the correct elements
# with #{perfect_match} in the correct positions
# You've taken #{guesses} guesses."

puts "Congratulations! You guessed the sequence '#{new_random_solution}'
in 8 guesses over 4 minutes, 22 seconds.
\nDo you want to (p)lay again or (q)uit?"
