gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'guesschecker'

class GuessCheckerTest < Minitest::Test

  def test_it_has_a_list_of_game_colors
    guess_checker = GuessChecker.new

    assert_equal ['r', 'b', 'g', 'y'], guess_checker.game_colors
  end

  def test_it_has_a_initial_hash_set_to_zero_for_each_key
    guess_checker = GuessChecker.new

    assert_equal ({'r' => 0, 'b' => 0, 'g' => 0, 'y' => 0}), guess_checker.initial_color_count
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

  def test_it_can_turn_an_array_into_a_hash_with_default_values_of_zero
    guess_checker = GuessChecker.new
    array = ['r','r','r','y']

    assert_equal ({'r' => 3, 'b' => 0, 'g' => 0, 'y' => 1}), guess_checker.array_to_hash(array)
  end

  def test_it_can_calculate_number_of_location_matches
    guess_checker = GuessChecker.new
    array1 = ['r', 'g', 'b', 'y']
    array2 = ['r', 'g', 'y', 'b']

    assert_equal 2, guess_checker.location_match(array1, array2)
  end

  def test_it_can_calculate_number_of_correct_colors
    guess_checker = GuessChecker.new
    hash1 = {'r' => 3, 'b' => 0, 'g' => 0, 'y' => 1}
    hash2 = {'r' => 1, 'b' => 1, 'g' => 1, 'y' => 1}

    assert_equal 2, guess_checker.color_match(hash1, hash2)
  end
  
end
