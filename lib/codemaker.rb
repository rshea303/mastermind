class CodeMaker
  attr_reader :solution, :game_solution

  def initialize(solution = 'rbgy')
    @solution = solution
  end

  def generate_new_solution
    @game_solution = solution_bank[2]
  end

  def solution_bank
    ['rrrr', 'bbbb', 'gggg', 'yyyy', 'ygbr']
  end

end
