require_relative 'player'
require_relative 'solution_generator'
require_relative 'game'

class GuessChecker

  def initialize
    @color_options = ["r", "b", "g", "y"]
  end

  # def correct_colors
  #   colors_correct = 0
  #   @color_options.each do |color|
  #     if player.player_guess[color] >= solution[color]
  #       colors_correct += solution[color]
  #     else
  #       colors_correct += attempt[color]
  #     end
  #   end
  #   colors_correct
  # end

  # def perfect_match
  #   puts "working"
  #   perfect_match = 0
  #   0.upto(3) do |n|
  #     if player.player_guess_array[n] == code_maker_solution.new_random_solution[n]
  #       perfect_match += 1
  #     else
  #       perfect_match
  #     end
  #   end
  #   perfect_match
  # end
end
