require_relative 'solution_generator'
require_relative 'player'
require_relative 'game'
require_relative 'guess_checker'

new_game = Game.new

puts "Welcome to MASTERMIND!"

puts "\nWhat is your name?"
name = gets.chomp.downcase
new_player = Player.new

new_game.intro
response = gets.chomp.downcase

loop do
  case response
  when "p", "play"
      new_game.play_game
      break
  when "i", "instructions"
      new_game.mastermind_instructions
      puts "\n\t(p)\n\t(i)nstructions\n\t(q)uit"
  when "q", "quit"
      new_game.end_game
  else
      puts "\nPlease enter a valid response."
  end
end

player_guess_string = gets.chomp.downcase
player_guess_array = new_player.player_guess(player_guess_string)
puts player_guess_array
player_guess_color_count = new_player.player_color_count(player_guess_array)
puts player_guess_color_count
# checker = GuessChecker.new(guess)
#
#
# puts "Correct colors = #{checker.correct_colors} Correct location = #{checker.perfect_match}"

#puts "Congratulations! You guessed the sequence"
# in 8 guesses over 4 minutes, 22 seconds.
# \nDo you want to (p)lay again or (q)uit?"
