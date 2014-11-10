class Player
  attr_reader :name, :guess

  def initialize(name, guess = 'xxxx')
    @name = name
    @guess = guess
  end

  def to_array
    guess.split('')
  end

end
