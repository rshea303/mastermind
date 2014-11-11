class CodeMaker
  attr_reader :new_random_solution

  def initialize
    @color_options = ["r", "b", "g", "y"]
    @new_random_solution = []
  end

  def generate_solution
    4.times do
      x = rand(3)
      @new_random_solution << @color_options[x]
    end
    @solution = @new_random_solution.join('')
  end

  def solution
    @solution ||= 'rgby'
  end
end

if __FILE__ == $0
  codemaker = CodeMaker.new
  puts codemaker.solution
  codemaker.generate_solution
  puts codemaker.new_random_solution
  puts codemaker.solution
end
