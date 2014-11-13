require_relative 'messages'
require_relative 'game'

message = Messages.new
puts message.intro

def quit?(response)
  response == ('q' || 'quit')
end

def play?(response)
  response == ("p" || "play")
end

def instructions?(response)
  response == ("i" || "instructions")
end

response = ''

while !quit?(response)
  puts message.play_instructions_quit
  print "> "
  response = gets.chomp.downcase
  if play?(response)
    Game.new.play_game
    exit
  elsif instructions?(response)
    message.mastermind_instructions
  elsif quit?(response)
    puts message.quit
    exit
  end
end
