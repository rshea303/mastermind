class Game

  def intro
    puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play_game
    puts "\nI have generated a beginner sequence with four elements made up of:
    \n(r)ed, (g)reen, (b)lue, and (y)ellow\nUse (q)uit at any time to end the game.
    \nPlease enter your first guess:"
    code_maker_solution = SolutionGenerator.new
    code_maker_array = code_maker_solution.solution_generator
    code_maker_solution.solution_color_count(code_maker_array)
  end

  def end_game
    puts "\nI'm sorry to see you go. Come back soon!"
    exit
  end
end
