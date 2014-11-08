class Player
  attr_reader :player_starting_colors, :player_default_solution, :player_guess, :name


  def initialize(name)
    @player_starting_colors = ["r", "b", "g", "y"]
    @player_default_solution = {"r" => 0, "b" => 0, "g" => 0, "y" => 0}
    @player_guess = ["r", "r", "r", "r"]#player_guess.split
    @name = name
  end

  def player_color_count
    player_guess.reduce(player_default_solution) do |player_default_solution, color|  # => ["red", "green", "red", "green"]
      player_default_solution[color] += 1; player_default_solution                           # => {"red"=>1, "blue"=>0, "green"=>0, "yellow"=>0}, {"red"=>1, "blue"=>0, "green"=>1, "yellow"=>0}, {"red"=>2, "blue"=>0, "green"=>1, "yellow"=>0}, {"red"=>2, "blue"=>0, "green"=>2, "yellow"=>0}
    end                                                                                  # => {"red"=>2, "blue"=>0, "green"=>2, "yellow"=>0}
  end
end

if __FILE__ == $0
sample = Player.new
puts sample.player_guess
puts sample.player_guess.class
puts sample.player_color_count
puts sample.player_color_count.class
end
