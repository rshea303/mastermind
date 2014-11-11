require_relative 'messages'
require_relative 'instructions'

puts "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
message = Messages.new
response = ''
response = gets.chomp.downcase

loop do
    case response
    when "p", "play"
      Game.new.play_game
      break
    when "i", "instructions"
      instructions = Instructions.new
      puts instructions.mastermind_instructions
      exit
    when "q", "quit"
      puts message.quit
      exit
    else
      puts "\nPlease enter a valid response."
      response = gets.chomp.downcase
    end
end
