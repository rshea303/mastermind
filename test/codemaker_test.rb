gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/codemaker'

class CodeMakerTest < Minitest::Test

  def test_it_has_color_options
    code_maker = CodeMaker.new

    assert_equal ['r', 'b', 'g', 'y'], code_maker.color_options
  end

  def test_it_has_a_default_solution
    code_maker = CodeMaker.new

    assert_equal 'rrry', code_maker.solution
  end

  def test_it_creates_a_random_solution
    # stub out random solution???
    skip
    code_maker = CodeMaker.new

    assert_equal #expected random solution, code_maker.solution
  end
end
