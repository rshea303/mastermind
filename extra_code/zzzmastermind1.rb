require_relative 'solution_generator'
require_relative 'player'
require_relative 'game'
require_relative 'guess_checker'

new_game = Game.new
player = Player.new #extra
new_game.intro
code_maker_solution = SolutionGenerator.new
code_maker_array = code_maker_solution.solution_generator
code_maker_solution.solution_color_count(code_maker_array)

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
      response = gets.chomp.downcase
  end
end

player_guess_string = gets.chomp.downcase #eeeeee
player.player_guess(player_guess_string) #eeeeee
player.player_color_count(player.player_guess_array) #eeeeee
puts player.player_guess_array #eeeeee
puts player.player_guess_color_count #eeeeeee

puts code_maker_solution.new_random_solution
puts code_maker_solution.code_maker_color_count
# => player_guess_to_solution = GuessChecker.new

  
