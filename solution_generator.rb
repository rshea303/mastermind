class SolutionGenerator
  attr_reader :new_random_solution, :initial_color_quantities, :code_maker_color_count  # => nil

  def initialize
    @color_options = ["r", "b", "g", "y"]
    @new_random_solution = []
    @initial_color_quantities = {"r" => 0, "b" => 0, "g" => 0, "y" => 0}
    @code_maker_color_count = 0
  end

  def solution_generator
    4.times do
      x = rand(3)
      @new_random_solution << @color_options[x]
    end
    @new_random_solution
  end

  def solution_color_count(array)
    @code_maker_color_count =
      array.reduce(initial_color_quantities) do |initial_color_quantities, color|
      initial_color_quantities[color] += 1; initial_color_quantities
    end
  end
end
