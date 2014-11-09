class Player
  attr_reader :initial_color_quantities, :player_guess_array, :player_guess_color_count  # => nil

  def initialize
    @initial_color_quantities = {"r" => 0, "b" => 0, "g" => 0, "y" => 0}
    @player_guess_array = ['r', 'r', 'r', 'r']
    @player_guess_color_count = 0
  end

  def player_guess(string)
    @player_guess_array = string.split("")
  end

  def player_color_count(player_guess_array)
    @player_guess_color_count =
      player_guess_array.reduce(initial_color_quantities) do |initial_color_quantities, color|
      initial_color_quantities[color] += 1; initial_color_quantities
    end
  end
end
