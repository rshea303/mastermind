require_relative 'messages'
require_relative 'instructions'
require_relative 'game'

message = Messages.new
puts message.intro

response = ''

while response != 'q' || response != 'quit'
  puts message.play_instructions_quit
  print "> "
  response = gets.chomp.downcase
    if response == "p" || response == "play"
      Game.new.play_game
      exit
    elsif  response == "i" || response == "instructions"
      instructions = Instructions.new
      puts instructions.mastermind_instructions
    elsif response == "q" || response == "quit"
      puts message.quit
      exit
    else
      puts message.valid_response
      #response = gets.chomp.downcase
    end
  end
