gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'codemaker'

class CodeMakerTest < Minitest::Test

  def test_it_has_a_default_solution
    codemaker = CodeMaker.new

    assert_equal 'rbgy', codemaker.solution
  end

  def test_it_has_a_list_of_5_possible_solutions_to_choose_from
    codemaker = CodeMaker.new

    assert_equal ['rrrr', 'bbbb', 'gggg', 'yyyy', 'ygbr'], codemaker.solution_bank
  end

  def test_it_creates_a_random_solution
    #need to stub out random action
    skip
  end

  def test_it_creates_a_new_solution
    codemaker = CodeMaker.new
    codemaker.generate_new_solution

    assert_equal 'gggg', codemaker.game_solution
  end
end
