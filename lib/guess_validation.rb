class GuessValidation

  def initialize(input)
    @input = input
    @color_check = false
  end

  def word_length
    @input.length
  end

  def valid_size
    if word_length == 4
      'Yes'
    else
      'Invalid Guess'
    end
  end

  def color_check?
    colors = ['r', 'b', 'g', 'y']
    @input.split('').all? { |color| colors.include?(color) }
  end

  # def color_check
  #   colors = ['r', 'b', 'g', 'y']
  #   @input.each_char do |n|
  #     colors.include?(n)
  #   else
  #     @color_check = false
  #   end
  #   #@input.include?(/[rbgy]/)
  # end
end
