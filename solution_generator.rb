class SolutionGenerator
  attr_reader :new_random_solution, :initial_color_quantities # => nil

  def initialize
    @color_options = ["r", "b", "g", "y"]                                 # => ["r", "b", "g", "y"]
    @new_random_solution = []                                             # => []
    @initial_color_quantities = {"r" => 0, "b" => 0, "g" => 0, "y" => 0}  # => {"r"=>0, "b"=>0, "g"=>0, "y"=>0}
  end

  def solution_generator
    4.times do
      x = rand(3)
      new_random_solution << @color_options[x]
    end
    new_random_solution
  end

  def solution_color_count(array)
    array.reduce(initial_color_quantities) do |initial_color_quantities, color|
      initial_color_quantities[color] += 1; initial_color_quantities
    end
  end

end

if __FILE__ == $0                       # => true
sample = SolutionGenerator.new          # => #<SolutionGenerator:0x007fe54a89c5d8 @color_options=["r", "b", "g", "y"], @new_random_solution=[], @initial_color_quantities={"r"=>0, "b"=>0, "g"=>0, "y"=>0}>
puts sample.solution                    # ~> NoMethodError: undefined method `solution' for #<SolutionGenerator:0x007fe54a89c5d8>
puts sample.solution.class
puts sample.solution_color_count
puts sample.solution_color_count.class
end

# ~> NoMethodError
# ~> undefined method `solution' for #<SolutionGenerator:0x007fe54a89c5d8>
# ~>
# ~> /Users/richshea/Turing/mastermind/solution_generator.rb:28:in `<main>'
