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

  def test_it_asks_player_to_enter_a_guess
    game = Game.new

    assert_equal "Please enter a guess", game.guess_prompt
  end

  def test_it_retrieves_player_guess
    game = Game.new

    assert_equal 'rrby', game.retrieve_guess
  end

end
