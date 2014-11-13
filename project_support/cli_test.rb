gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cli'
require_relative '../lib/statements'

class CliTest < Minitest::Test

  def test_it_has_an_inital_command_value_of_empty_string
    input = $stdin
    output = $stdout
    cli = Cli.new(input, output)

    assert_equal "", cli.command
  end

  def test_it_responds_to_call
    input = $stdin
    output = $stdout
    cli = Cli.new(input, output)

    assert cli.respond_to?(:call)
  end
#
  def test_it_responds_to_output
    input = $stdin
    output = $stdout
    cli = Cli.new(input, output)

    assert cli.respond_to?(:output)
  end

  def test_it_asks_user_if_they_want_to_play
    input = $stdin
    output = $stdout
    cli = Cli.new(input, output)

    assert_equal "\nWould you like to (p)lay,
    read the (i)nstructions, or (q)uit?", cli.selections
  end

  # def test_it_outputs_an_intro_message
  #   assert_output (stdout)"Welcome to Mastermind!", { Cli.new.call }
  # end

  def test_it_outputs_an_intro_message
    input = $stdin
    output = $stdout
    cli = Cli.new(input, output)

    assert_equal "Welcome to Mastermind!" , cli.call
  end

  def test_it_prompts_for_play_instructions_quit
    skip
  end
end
