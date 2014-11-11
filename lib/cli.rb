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
    puts "Welcome to Mastermind!"
    puts "Enter (p)lay, (i)nstructions, or (q)uit"

    response = gets.chomp.downcase

    loop do
       case response
       when "p", "play"
           game = Game.new.guess_prompt
           break
       when "i", "instructions"
           puts self.instructions
           "\nEnter (p)lay, (i)nstructions, (q)uit"
       when "q", "quit"
           puts self.quit
       else
           puts "\nPlease enter a valid response."
           response = gets.chomp.downcase
       end
    end
  end

  def instructions
    "\nMastermind instructions."
  end

  def quit
    "\nGoodbye."
  end
end
