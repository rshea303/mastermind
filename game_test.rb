gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'game'

class GameTest < Minitest::Test
  def test_it_has_an_introduction
    game = Game.new

    assert_equal "Welcome to MASTERMIND!\nWould you like to (p)lay,
    read the (i)nstructions, or (q)uit?", game.intro
  end

  def test_it_lets_player_quit_game
    game = Game.new

    assert_equal "\nI'm sorry to see you go. Come back soon!", game.quit
  end

end
