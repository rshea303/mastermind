require_relative 'messages'
require_relative 'instructions'
require_relative 'game'

message = Messages.new
puts message.intro

response = ''

def quit?(response)
  response == ('q' || 'quit')
end

while !quit?(response)
  puts message.play_instructions_quit
  print "> "
  response = gets.chomp.downcase
  if response == ("p" || "play")
    Game.new.play_game
    exit
  elsif response == ("i" || "instructions")
    message.mastermind_instructions
  elsif quit?(response)
    puts message.quit
    exit
  else
    puts message.valid_response
  end
end
