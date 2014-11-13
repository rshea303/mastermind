class GuessValidation

  def initialize(guess)
    @guess = guess
  end

  def valid_answer_check?
    colors = ['r', 'b', 'g', 'y']
    if @guess.length == 4
      @guess.chars.all? { |color| colors.include?(color) }
    else
      false
    end
  end
end
