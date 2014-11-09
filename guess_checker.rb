require_relative 'player'
require_relative 'solution_generator'

class GuessChecker

  def initialize
    @color_options = ["r", "b", "g", "y"]
  end

  def correct_colors
    colors_correct = 0
    base_colors.each do |color|
      if player_guess[color] >= solution[color]
        colors_correct += solution[color]
      else
        colors_correct += attempt[color]
      end
    end
    colors_correct
  end

  def perfect_match
    perfect_match = 0
    0.upto(3) do |n|
      if player_guess_array[n] == new_random_solution[n]
        perfect_match += 1
      else
        perfect_match
      end
    end
    perfect_match
  end
end
