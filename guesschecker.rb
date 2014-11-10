class GuessChecker
  attr_reader :initial_color_count

  def initialize
    @initial_color_count = { 'r' => 0, 'b' => 0, 'g' => 0, 'y' => 0 }
  end

  def game_colors
    ['r', 'b', 'g', 'y']
  end

  def string_to_array(string)
    string.split('')
  end

  def array_to_hash(array)
    array.reduce(initial_color_count) do |initial_color_count, color|
      initial_color_count[color] += 1; initial_color_count
    end
  end

  def location_match(array1, array2)
    location_match = 0
      0.upto(3) do |n|
        if array1[n] == array2[n]
          location_match += 1
        else
          location_match
        end
      end
      location_match
  end

  def color_match(hash1, hash2)
    color_match = 0
      game_colors.each do |color|
        if hash1[color] >= hash2[color]
          color_match += hash2[color]
        else
          color_match += hash1[color]
        end
      end
      color_match
  end
end
