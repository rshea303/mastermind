gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class GameTest < Minitest::Test

  def test_it_initializs_with_player_guess
    game = Game.new('rrby')

    assert_equal 'rrby', game.player_guess
  end

  def test_it_initializes_with_different_player_guess
    game = Game.new('rrbb')

    assert_equal 'rrbb', game.player_guess
  end

end
