gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class GameTest < Minitest::Test

  def test_it_lets_player_quit_game
    game = Game.new

    assert_equal "\nI'm sorry to see you go. Come back soon!", game.quit
  end

  def test_it_asks_player_to_enter_a_guess
    game = Game.new

    assert_equal "Please enter a guess", game.guess_prompt
  end

  def test_it_retrieves_player_guess
    game = Game.new

    assert_equal 'rrby', game.retrieve_guess
  end

end
