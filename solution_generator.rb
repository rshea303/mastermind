class SolutionGenerator
  attr_reader :game_starting_colors, :new_random_solution, :game_default_solution  # => nil

  def initialize
    @game_starting_colors = ["r", "b", "g", "y"]                       # => ["red", "blue", "green", "yellow"]
    @new_random_solution = []                                                        # => []
    @game_default_solution = {"r" => 0, "b" => 0, "g" => 0, "y" => 0}  # => {"red"=>0, "blue"=>0, "green"=>0, "yellow"=>0}
  end

  def solution
    4.times do                                        # => 4
      x = rand(3)                                     # => 0, 2, 0, 2
      new_random_solution << game_starting_colors[x]  # => ["red"], ["red", "green"], ["red", "green", "red"], ["red", "green", "red", "green"]
    end                                               # => 4
    new_random_solution                               # => ["red", "green", "red", "green"]
  end

  def solution_color_count
    new_random_solution.reduce(game_default_solution) do |game_default_solution, color|  # => ["red", "green", "red", "green"]
      game_default_solution[color] += 1; game_default_solution                           # => {"red"=>1, "blue"=>0, "green"=>0, "yellow"=>0}, {"red"=>1, "blue"=>0, "green"=>1, "yellow"=>0}, {"red"=>2, "blue"=>0, "green"=>1, "yellow"=>0}, {"red"=>2, "blue"=>0, "green"=>2, "yellow"=>0}
    end                                                                                  # => {"red"=>2, "blue"=>0, "green"=>2, "yellow"=>0}
  end

end

if __FILE__ == $0                 # => true
sample = SolutionGenerator.new    # => #<SolutionGenerator:0x007fe1fc8bc7f8 @game_starting_colors=["red", "blue", "green", "yellow"], @new_random_solution=[], @game_default_solution={"red"=>0, "blue"=>0, "green"=>0, "yellow"=>0}>
puts sample.solution
puts sample.solution.class              # => nil
puts sample.solution_color_count
puts sample.solution_color_count.class  # => nil
end                               # => nil

# >> red
# >> green
# >> red
# >> green
# >> {"red"=>2, "blue"=>0, "green"=>2, "yellow"=>0}
