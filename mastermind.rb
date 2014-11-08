require_relative 'solution_generator'
require_relative 'player'
require_relative 'game'
require_relative 'instructions'

puts "Welcome to MASTERMIND!"
puts "\nWhat is your name?"
name_entry = gets.chomp
player = Player.new(name_entry)

puts "Nice to meet you #{player.name}."
puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

response = gets.chomp.downcase
game = Game.new
game.play_game
mmsolution = SolutionGenerator.new
solution = mmsolution.solution

# if response == "p" || "play"
#   play_game
# # elsif
# #   response == "i" || "instructions"
# #   mastermind_instructions
# # elsif
# #   response == "q" || "quit"
# #   player = 0
# # else
# #   puts "Please enter a valid response."
# end

puts "\nI have generated a beginner sequence with four elements made up of:
(r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game.
\nWhat's your guess?"

answer = gets.chomp

puts "You guessed... #{answer}"
puts "The correct answer is ... #{solution.join}"

# puts "'#{user_attempt}' has #{colors_correct} of the correct elements
# with #{perfect_match} in the correct positions
# You've taken #{guesses} guesses."

#puts "Congratulations! You guessed the sequence"
# in 8 guesses over 4 minutes, 22 seconds.
# \nDo you want to (p)lay again or (q)uit?"
