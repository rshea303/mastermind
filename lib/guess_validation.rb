class GuessValidation

  def initialize(input)
    @input = input
  end

  def valid_answer_check?
    colors = ['r', 'b', 'g', 'y']
    if @input.length == 4
      @input.chars.all? { |color| colors.include?(color) }
    else
      false
    end
  end
end
