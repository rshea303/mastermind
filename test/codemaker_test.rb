gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/codemaker'

class CodeMakerTest < Minitest::Test

  def test_it_creates_a_random_solution
    skip
    code_maker = CodeMaker.new

    assert_equal #expected random solution, code_maker.solution
  end
end
