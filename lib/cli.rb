require_relative 'codemaker'
require_relative 'game'
require_relative 'guesschecker'
require_relative 'player'
require_relative 'statements'

class Cli
  attr_reader :command, :input, :output

  def initialize(input=$stdin, output=$stdout)
    @command = ""
    @input = input
    @output = output
  end

  def call
    "Welcome to Mastermind!"
    "Enter (p)lay, (i)nstructions, or (q)uit"

    response = gets.chomp.downcase

    loop do
       case response
       when "p", "play"
           game = Game.new
           break
       when "i", "instructions"
           self.instructions
           "\nEnter (p)lay, (i)nstructions, (q)uit"
       when "q", "quit"
           self.quit
       else
           puts "\nPlease enter a valid response."
           response = gets.chomp.downcase
       end
    end
  end

  def instructions
    "Mastermind instructions."
  end

  def quit
    puts "\nGoodbye."
  end
