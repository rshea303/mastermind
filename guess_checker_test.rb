gem 'minitest', '~> 5.2'         # => true
require 'minitest/autorun'       # => true
require 'minitest/pride'         # => true
require_relative 'guesschecker'  # => true
require_relative 'codemaker'     # => true
require_relative 'player'        # => true

class GuessCheckerTest < Minitest::Test

  def test_it_has_a_list_of_game_colors
    guess_checker = GuessChecker.new     # => #<GuessChecker:0x007f9b3a9bab18 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>

    assert_equal ['r', 'b', 'g', 'y'], guess_checker.game_colors  # => true
  end

  def test_it_has_a_initial_hash_set_to_zero_for_each_key
    guess_checker = GuessChecker.new                       # => #<GuessChecker:0x007f9b3a9bb248 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>

    assert_equal ({'r' => 0, 'b' => 0, 'g' => 0, 'y' => 0}), guess_checker.initial_color_count  # => true
  end

  def test_it_can_turn_a_string_into_an_array
    guess_checker = GuessChecker.new           # => #<GuessChecker:0x007f9b3a9c3358 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    string = 'rgrg'                            # => "rgrg"

    assert_equal ['r', 'g', 'r', 'g'], guess_checker.string_to_array(string)  # => true
  end

  def test_it_can_turn_a_different_string_into_an_array
    guess_checker = GuessChecker.new                     # => #<GuessChecker:0x007f9b3a9b3db8 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    string = 'ybyb'                                      # => "ybyb"

    assert_equal ['y', 'b', 'y', 'b'], guess_checker.string_to_array(string)  # => true
  end

  def test_it_can_turn_an_array_into_a_hash_with_default_values_of_zero
    guess_checker = GuessChecker.new                                     # => #<GuessChecker:0x007f9b3a9bbc98 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    array = ['r','r','r','y']                                            # => ["r", "r", "r", "y"]

    assert_equal ({'r' => 3, 'b' => 0, 'g' => 0, 'y' => 1}), guess_checker.array_to_hash(array)  # => true
  end

  def test_it_can_calculate_number_of_location_matches
    guess_checker = GuessChecker.new                    # => #<GuessChecker:0x007f9b3a9c26d8 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    array1 = ['r', 'g', 'b', 'y']                       # => ["r", "g", "b", "y"]
    array2 = ['r', 'g', 'y', 'b']                       # => ["r", "g", "y", "b"]

    assert_equal 2, guess_checker.location_match(array1, array2)  # => true
  end

  def test_it_can_calculate_number_of_correct_colors
    guess_checker = GuessChecker.new                  # => #<GuessChecker:0x007f9b3a9c08d8 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    hash1 = {'r' => 3, 'b' => 0, 'g' => 0, 'y' => 1}  # => {"r"=>3, "b"=>0, "g"=>0, "y"=>1}
    hash2 = {'r' => 1, 'b' => 1, 'g' => 1, 'y' => 1}  # => {"r"=>1, "b"=>1, "g"=>1, "y"=>1}

    assert_equal 2, guess_checker.color_match(hash1, hash2)  # => true
  end

  def test_it_can_calculate_location_matches_between_player_and_codemaker
    guess_checker = GuessChecker.new                                       # => #<GuessChecker:0x007f9b3a9c1af8 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    code_maker = CodeMaker.new('rrry')                                     # => #<CodeMaker:0x007f9b3a9c17d8 @solution="rrry">
    player = Player.new("George", 'rrrb')                                  # => #<Player:0x007f9b3a9c1620 @name="George", @guess="rrrb">

    assert_equal 3, guess_checker.total_location_match(player.guess, code_maker.solution)  # => true
  end

  def test_it_can_calculate_number_of_correct_colors_between_player_and_codemaker
    guess_checker = GuessChecker.new                                               # => #<GuessChecker:0x007f9b3a9b9ec0 @initial_color_count={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
    code_maker = CodeMaker.new('rrry')                                             # => #<CodeMaker:0x007f9b3a9b9948 @solution="rrry">
    player = Player.new("George", 'rrrb')                                          # => #<Player:0x007f9b3a9b96a0 @name="George", @guess="rrrb">
    assert_equal 3, guess_checker.total_correct_colors(player.guess, code_maker.solution)
  end

end

# >> Run options: --seed 11147
# >>
# >> # Running:
# >>
# >> [38;5;154m.[0m[38;5;154m.[0m[38;5;148m.[0m[38;5;184m.[0m[38;5;184m.[0m[38;5;214m.[0m[38;5;214m.[0m[41m[37mF[0m[38;5;208m.[0m
# >>
# >> [38;5;154mF[0m[38;5;154ma[0m[38;5;148mb[0m[38;5;184mu[0m[38;5;184ml[0m[38;5;214mo[0m[38;5;214mu[0m[38;5;208ms[0m[38;5;208m [0m[38;5;203mr[0m[38;5;203mu[0m[38;5;198mn[0m in 0.001518s, 5928.8538 runs/s, 5928.8538 assertions/s.
# >>
# >>   1) Failure:
# >> GuessCheckerTest#test_it_can_calculate_number_of_correct_colors_between_player_and_codemaker [/Users/richshea/Turing/mastermind/guess_checker_test.rb:72]:
# >> Expected: 3
# >>   Actual: 8
# >>
# >> 9 runs, 9 assertions, 1 failures, 0 errors, 0 skips
