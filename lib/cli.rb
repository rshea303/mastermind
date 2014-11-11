require_relative 'codemaker'
require_relative 'game'
require_relative 'guesschecker'
require_relative 'player'
require_relative 'statements'

class CLI
  attr_reader :command, :input, :output

  def initialize(input=$stdin, output=$stdout)
    @command = ""
    @input = input
    @output = output
  end

  def call
    puts "\nWelcome to Mastermind!"
    puts "Enter (p)lay, (i)nstructions, or (q)uit"

    response = gets.chomp.downcase

    loop do
       case response
       when "p", "play"
           game = Game.new.guess_prompt
           break
       when "i", "instructions"
           puts self.instructions
           self.call
       when "q", "quit"
           puts self.quit
           exit
       else
           puts "\nPlease enter a valid response."
           response = gets.chomp.downcase
       end
    end
  end

  def instructions
    "\nHere are the Mastermind instructions."
  end

  def quit
    "\nGoodbye."
  end
end
