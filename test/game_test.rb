gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class GameTest < Minitest::Test

  def test_game_starts_with_counter_at_zero
    game = Game.new
    result = game.counter

    assert_equal 0, result
  end

  def test_it_calculates_elapsed_time
    skip
    game = Game.new
    solution = 'xxxx'
    counter = 5
    game.winner(999111, 999999)

    assert_equal "\nCongratulations! You guessed the sequence 'XXXX' in 5 guesses over 14 minutes, 48 seconds.", "\nCongratulations! You guessed the sequence '#{solution.upcase}' in #{counter} guesses over #{minutes} minutes, #{seconds} seconds."
  end
end
