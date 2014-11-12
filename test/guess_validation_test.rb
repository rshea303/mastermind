gem 'minitest', '~> 5.2'                    # => true
require 'minitest/autorun'                  # => true
require 'minitest/pride'                    # => true
require_relative '../lib/guess_validation'  # => true

class GuessValidationTest < Minitest::Test
  def test_it_validates_guess_length
    validate = GuessValidation.new('rrrr')  # => #<GuessValidation:0x007f8bf91bcb78 @input="rrrr", @color_check=false>
    result = validate.word_length           # => 4

    assert_equal 4, result  # => true
  end

  def test_it_validates_a_different_guess
    validate = GuessValidation.new('rrrryyyy')  # => #<GuessValidation:0x007f8bf91bd2a8 @input="rrrryyyy", @color_check=false>
    result = validate.word_length               # => 8

    assert_equal 8, result  # => true
  end

  def test_it_reports_if_size_is_not_equal_to_four
    validate = GuessValidation.new('rrr')           # => #<GuessValidation:0x007f8bf91be540 @input="rrr", @color_check=false>
    result = validate.valid_size                    # => "Invalid Guess"

    assert_equal "Invalid Guess", result  # => true
  end

  def test_it_validates_guess_characters_are_colors
    validate = GuessValidation.new('rrbb')           # => #<GuessValidation:0x007f8bf91bd8e8 @input="rrbb", @color_check=false>
                                # => false

    assert validate.color_check?
  end

  def test_it_refutes_guess_that_has_invalid_characters
    validate = GuessValidation.new('ttry')

    refute validate.color_check?
  end
end

# >> Run options: --seed 21448
# >>
# >> # Running:
# >>
# >> [38;5;154m.[0m[41m[37mE[0m[38;5;154m.[0m[38;5;148m.[0m
# >>
# >> [38;5;154mF[0m[38;5;154ma[0m[38;5;148mb[0m[38;5;184mu[0m[38;5;184ml[0m[38;5;214mo[0m[38;5;214mu[0m[38;5;208ms[0m[38;5;208m [0m[38;5;203mr[0m[38;5;203mu[0m[38;5;198mn[0m in 0.001133s, 3530.4501 runs/s, 2647.8376 assertions/s.
# >>
# >>   1) Error:
# >> GuessValidationTest#test_it_validates_guess_characters_are_colors:
# >> NoMethodError: undefined method `color_check?' for #<GuessValidationTest:0x007f8bf91bdb18>
# >>     /Users/richshea/Turing/mastermind/test/guess_validation_test.rb:32:in `test_it_validates_guess_characters_are_colors'
# >>
# >> 4 runs, 3 assertions, 0 failures, 1 errors, 0 skips
