gem 'minitest', '~> 5.2'                    # => true
require 'minitest/autorun'                  # => true
require 'minitest/pride'                    # => true
require_relative '../lib/guess_validation'  # => true

class GuessValidationTest < Minitest::Test

  def test_it_refutes_for_length_greater_than_expected
    validate = GuessValidation.new('rrrrr') # => false

    refute validate.valid_answer_check?
  end

  def test_it_refutes_for_length_shorter_than_expected
    validate = GuessValidation.new('rr')

    refute validate.valid_answer_check?
  end

  def test_it_asserts_for_accurate_length
    validate = GuessValidation.new('yyyy')

    assert validate.valid_answer_check?
  end

  def test_it_asserts_for_correct_color_options
    validate = GuessValidation.new('rbry')   # => true

    assert validate.valid_answer_check?
  end

  def test_it_asserts_for_different_set_of_correct_colors
    validate = GuessValidation.new('ggbb')   # => true

    assert validate.valid_answer_check?
  end

  def test_it_refutes_for_correct_color_options
    validate = GuessValidation.new('xxxx')   # => false

    refute validate.valid_answer_check? # => false
  end

  def test_it_refutes_for_different_color_options
    validate = GuessValidation.new('rxrr')

    refute validate.valid_answer_check?
  end
end
