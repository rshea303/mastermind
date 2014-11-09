class Player
  attr_reader :name, :initial_color_quantities  # => nil

  def initialize
    @player_starting_colors = ["r", "b", "g", "y"]                        # => ["r", "b", "g", "y"]
    @initial_color_quantities = {"r" => 0, "b" => 0, "g" => 0, "y" => 0}  # => {"r"=>0, "b"=>0, "g"=>0, "y"=>0}
    @name = "Richard"                                                     # => "Richard"
  end

  def player_guess(player_guess_string)  # ~> ArgumentError: wrong number of arguments (0 for 1)
    player_guess_string.split("")
  end

  def player_color_count(player_guess_array)
    player_guess_array.reduce(initial_color_quantities) do |initial_color_quantities, color|
      initial_color_quantities[color] += 1; initial_color_quantities
    end
  end
end

if __FILE__ == $0                     # => true
sample = Player.new                   # => #<Player:0x007f9a0b0b8bf8 @player_starting_colors=["r", "b", "g", "y"], @initial_color_quantities={"r"=>0, "b"=>0, "g"=>0, "y"=>0}, @name="Richard">
puts sample.player_guess
puts sample.player_guess.class
puts sample.player_color_count
puts sample.player_color_count.class
end

# ~> ArgumentError
# ~> wrong number of arguments (0 for 1)
# ~>
# ~> /Users/richshea/Turing/mastermind/player.rb:10:in `player_guess'
# ~> /Users/richshea/Turing/mastermind/player.rb:23:in `<main>'
