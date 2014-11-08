class Player
  attr_reader :player_starting_colors, :player_default_solution, :player_guess

  def initialize#(user input)
    @player_starting_colors = ["red", "blue", "green", "yellow"]
    @player_default_solution = {"red" => 0, "blue" => 0, "green" => 0, "yellow" => 0}
    @player_guess = ["red", "red", "blue", "red"]#player_guess.split
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
puts sample.player_color_count
end
