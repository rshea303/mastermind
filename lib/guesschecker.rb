class GuessChecker
  attr_reader :total_color_match  # => nil

  def location_match(player, code_maker)
    location_match = 0                                   # => 0
    0.upto(3) do |n|                                     # => 0
      if player.split('')[n] == code_maker.split('')[n]  # => true, true, true, true
        location_match += 1                              # => 1, 2, 3, 4
      else
        location_match
      end                                                # => 1, 2, 3, 4
    end                                                  # => 0
    location_match                                       # => 4
  end

  def total_correct_colors(player, code_maker)
    player_hash      = counts_for(player.split(''))      # => {"r"=>2, "b"=>1, "g"=>1, "y"=>0}
    code_maker_hash  = counts_for(code_maker.split(''))  # => {"r"=>2, "b"=>1, "g"=>1, "y"=>0}
    color_match(player_hash, code_maker_hash)            # => 4

    # color_match(counts_for(guess), counts_for(secret))
  end

  def color_match(hash1, hash2)
    total_color_match = 0                  # => 0
    game_colors.each do |color|            # => ["r", "b", "g", "y"]
      if hash1[color] >= hash2[color]      # => true, true, true, true
        total_color_match += hash2[color]  # => 2, 3, 4, 4
      else
        total_color_match += hash1[color]
      end                                  # => 2, 3, 4, 4
    end                                    # => ["r", "b", "g", "y"]
    total_color_match                      # => 4
  end


  private  # => GuessChecker

  def initial_color_count
    { 'r' => 0, 'b' => 0, 'g' => 0, 'y' => 0 }  # => {"r"=>0, "b"=>0, "g"=>0, "y"=>0}, {"r"=>0, "b"=>0, "g"=>0, "y"=>0}
  end

  def game_colors
    ['r', 'b', 'g', 'y']  # => ["r", "b", "g", "y"]
  end

  def counts_for(array)
    array.reduce(initial_color_count) do |initial_color_count, color|  # => ["r", "r", "b", "g"], ["r", "r", "b", "g"]
      initial_color_count[color] += 1; initial_color_count             # => {"r"=>1, "b"=>0, "g"=>0, "y"=>0}, {"r"=>2, "b"=>0, "g"=>0, "y"=>0}, {"r"=>2, "b"=>1, "g"=>0, "y"=>0}, {"r"=>2, "b"=>1, "g"=>1, "y"=>0}, {"r"=>1, "b"=>0, "g"=>0, "y"=>0}, {"r"=>2, "b"=>0, "g"=>0, "y"=>0}, {"r"=>2, "b"=>1, "g"=>0, "y"=>0}, {"r"=>2, "b"=>1, "g"=>1, "y"=>0}
    end                                                                # => {"r"=>2, "b"=>1, "g"=>1, "y"=>0}, {"r"=>2, "b"=>1, "g"=>1, "y"=>0}
  end
end

if __FILE__ == $0                                             # => true
  guess_checker = GuessChecker.new                            # => #<GuessChecker:0x007fe2c489c700>
  player = 'rrbg'                                             # => "rrbg"
  code_maker = 'rrbg'                                         # => "rrbg"
  x = guess_checker.location_match(player, code_maker)        # => 4
  y = guess_checker.total_correct_colors(player, code_maker)  # => 4
  puts "#{code_maker}"                                        # => nil
  puts "#{player}"                                            # => nil
  puts "#{x} in the right location"                           # => nil
  puts "#{y} total correct elements"                          # => nil
end                                                           # => nil

# >> rrbg
# >> rrbg
# >> 4 in the right location
# >> 4 total correct elements
