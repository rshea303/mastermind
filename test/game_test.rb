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

end
