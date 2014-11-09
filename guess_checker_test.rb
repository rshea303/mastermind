gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'guesschecker'

class GuessCheckerTest < Minitest::Test

  def test_it_has_a_list_of_game_colors
    guess_checker = GuessChecker.new

    assert_equal ['r', 'b', 'g', 'y'], guess_checker.game_colors
  end

  def test_it_can_turn_a_string_into_an_array
    guess_checker = GuessChecker.new
    string = 'rgrg'

    assert_equal ['r', 'g', 'r', 'g'], guess_checker.string_to_array(string)
  end

  def test_it_can_turn_a_different_string_into_an_array
    guess_checker = GuessChecker.new
    string = 'ybyb'
    
    assert_equal ['y', 'b', 'y', 'b'], guess_checker.string_to_array(string)
  end
end
