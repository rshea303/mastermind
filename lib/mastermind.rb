require_relative 'messages'
require_relative 'instructions'
require_relative 'game'

message = Messages.new
puts message.intro

response = ''

while response != ('q' || 'quit')
  puts message.play_instructions_quit
  print "> "
  response = gets.chomp.downcase
  if response == ("p" || "play")
    Game.new.play_game
    exit
  elsif response == ("i" || "instructions")
    instructions = Instructions.new
    puts instructions.mastermind_instructions
  elsif response == ("q" || "quit")
    puts message.quit
    exit
  else
    puts message.valid_response
  end
end
