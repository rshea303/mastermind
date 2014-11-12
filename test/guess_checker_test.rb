gem 'minitest', '~> 5.2'                  # => true
require 'minitest/autorun'                # => true
require 'minitest/pride'                  # => true
require_relative '../lib/guesschecker'    # => true
require_relative '../lib/codemaker'       # => true

class GuessCheckerTest < Minitest::Test

  def test_it_has_a_list_of_game_colors
    skip # private method
    guess_checker = GuessChecker.new

    assert_equal ['r', 'b', 'g', 'y'], guess_checker.game_colors
  end

  def test_it_has_a_initial_hash_set_to_zero_for_each_key
    skip # private method
    guess_checker = GuessChecker.new

    assert_equal ({'r' => 0, 'b' => 0, 'g' => 0, 'y' => 0}), guess_checker.initial_color_count
  end

  def test_it_can_turn_an_array_into_a_hash_with_default_values_of_zero
    skip # private method
    guess_checker = GuessChecker.new
    array = ['r','r','r','y']

    assert_equal ({'r' => 3, 'b' => 0, 'g' => 0, 'y' => 1}), guess_checker.array_to_hash(array)
  end

  def test_it_can_calculate_number_of_location_matches
    guess_checker = GuessChecker.new                    # => #<GuessChecker:0x007fbde40fa6a0>
    player = 'rgby'                       # => ["r", "g", "b", "y"]
    code_maker = 'rgyb'                      # => ["r", "g", "y", "b"]

    assert_equal 2, guess_checker.location_match(player, code_maker)  # => true
  end

  def test_it_can_calculate_number_of_correct_colors
    guess_checker = GuessChecker.new                  # => #<GuessChecker:0x007fbde40f94d0>
    hash1 = {'r' => 3, 'b' => 0, 'g' => 0, 'y' => 1}  # => {"r"=>3, "b"=>0, "g"=>0, "y"=>1}
    hash2 = {'r' => 1, 'b' => 1, 'g' => 1, 'y' => 1}  # => {"r"=>1, "b"=>1, "g"=>1, "y"=>1}

    assert_equal 2, guess_checker.color_match(hash1, hash2)  # => true
  end

  def test_it_can_calculate_number_of_correct_colors_between_player_and_codemaker
    guess_checker = GuessChecker.new                                                       # => #<GuessChecker:0x007fbde40f88f0>
    code_maker = CodeMaker.new                                                             # => #<CodeMaker:0x007fbde40f87b0 @color_options=["r", "b", "g", "y"], @new_random_solution=[]>
    player_guess = 'rrrb'                                                                  # => "rrrb"
    assert_equal 3, guess_checker.total_correct_colors(player_guess, code_maker.solution)  # => true
  end

end

# >> Run options: --seed 64314
# >>
# >> # Running:
# >>
# >> [38;5;154mS[0m[38;5;154m.[0m[38;5;148mS[0m[38;5;184m.[0m[38;5;184m.[0m[38;5;214mS[0m[38;5;214m.[0m[38;5;208mS[0m[38;5;208mS[0m
# >>
# >> [38;5;154mF[0m[38;5;154ma[0m[38;5;148mb[0m[38;5;184mu[0m[38;5;184ml[0m[38;5;214mo[0m[38;5;214mu[0m[38;5;208ms[0m[38;5;208m [0m[38;5;203mr[0m[38;5;203mu[0m[38;5;198mn[0m in 0.001325s, 6792.4528 runs/s, 3018.8679 assertions/s.
# >>
# >> 9 runs, 4 assertions, 0 failures, 0 errors, 5 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
