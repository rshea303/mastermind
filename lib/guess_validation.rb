class GuessValidation

  def initialize(input)
    @input = input       # => "rrrrr", "rr", "rrrr", "xxxx", "rxrr", "rbry"
  end

  def valid_answer_check?
    colors = ['r', 'b', 'g', 'y']                               # => ["r", "b", "g", "y"], ["r", "b", "g", "y"], ["r", "b", "g", "y"], ["r", "b", "g", "y"], ["r", "b", "g", "y"], ["r", "b", "g", "y"]
    if @input.length == 4                                       # => false, false, true, true, true, true
      @input.split('').all? { |color| colors.include?(color) }  # => true, false, false, true
    else
      false                                                     # => false, false
    end                                                         # => false, false, true, false, false, true
  end
end
