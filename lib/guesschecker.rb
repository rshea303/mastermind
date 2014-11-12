class GuessChecker
  attr_reader :total_color_match

  def location_match(player, code_maker)
    location_match = 0
    0.upto(3) do |n|
      if player.split('')[n] == code_maker.split('')[n]
        location_match += 1
      else
        location_match
      end
    end
    location_match
  end

  def total_correct_colors(player, code_maker)
    player_hash      = counts_for(player.split(''))
    code_maker_hash  = counts_for(code_maker.split(''))
    color_match(player_hash, code_maker_hash)

    # color_match(counts_for(guess), counts_for(secret))
  end

  def color_match(hash1, hash2)
    total_color_match = 0
    game_colors.each do |color|
      if hash1[color] >= hash2[color]
        total_color_match += hash2[color]
      else
        total_color_match += hash1[color]
      end
    end
    total_color_match
  end


  private

  def initial_color_count
    { 'r' => 0, 'b' => 0, 'g' => 0, 'y' => 0 }
  end

  def game_colors
    ['r', 'b', 'g', 'y']
  end

  def counts_for(array)
    array.reduce(initial_color_count) do |initial_color_count, color|
      initial_color_count[color] += 1; initial_color_count
    end
  end
end

if __FILE__ == $0
  guess_checker = GuessChecker.new
  player = 'rrrb'
  code_maker = 'rrgb'
  x = guess_checker.location_match(player, code_maker)
  y = guess_checker.total_correct_colors(player, code_maker)
  puts "#{code_maker}"
  puts "#{player}"
  puts "#{x} in the right location"
  puts "#{y} total correct elements"
end
