require_relative 'solution_generator'
require_relative 'player'
require_relative 'game'

puts "Welcome to MASTERMIND!"
%x( say "Welcome to MASTERMIND!")

puts "\nWhat is your name?"
%x( say "What is your name?")

name_entry = gets.chomp.downcase
player = Player.new(name_entry)
new_game = Game.new

%x( say "Nice to meet you #{player.name.capitalize}.")

puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
%x( say "Would you like to play, reed the instructions, or quit?")

loop do
  response = gets.chomp.downcase
  case response
  when "p", "play"
      new_game.play_game
      break
  when "i", "instructions"
      new_game.mastermind_instructions
      %x(say "Sounds fun, right?")
      puts "\n\t(p)\n\t(i)nstructions\n\t(q)uit"
      %x(say "Are you ready to play?  Or are you going to be a baby and quit.")
  when "q", "quit"
      new_game.end_game
  else
      puts "\nPlease enter a valid response."
      %x( say "Please enter a valid response.")
  end
end

mmsolution = SolutionGenerator.new
solution = mmsolution.solution

answer = gets.chomp

puts "You guessed... #{answer}"
puts "The correct answer is ... #{solution.join}"

# puts "'#{user_attempt}' has #{colors_correct} of the correct elements
# with #{perfect_match} in the correct positions
# You've taken #{guesses} guesses."

#puts "Congratulations! You guessed the sequence"
# in 8 guesses over 4 minutes, 22 seconds.
# \nDo you want to (p)lay again or (q)uit?"
