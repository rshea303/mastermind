class SolutionGenerator
  attr_reader :starting_colors, :new_random_solution

  def initialize
    @starting_colors = ["red", "blue", "green", "yellow"]
    @new_random_solution = []
  end

  def solution
    4.times do
      x = rand(3)
      new_random_solution << starting_colors[x]
    end
    new_random_solution
  end

end

if __FILE__ == $0
sample = SolutionGenerator.new
puts sample.solution
puts sample.solution.class
end
