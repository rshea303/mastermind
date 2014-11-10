game = Game.new
game.intro

response = gets.chomp.downcase

loop do
  case response
  when "p", "play"
      game.play_game
      break
  when "i", "instructions"
      game.mastermind_instructions
      puts "\n\t(p)\n\t(i)nstructions\n\t(q)uit"
  when "q", "quit"
      game.end_game
  else
      puts "\nPlease enter a valid response."
      response = gets.chomp.downcase
  end
end
