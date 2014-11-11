class Game
  attr_reader :player_guess

  def initialize(player_guess)
    @player_guess = player_guess
  end

  def player_guess
    @player_guess
  end
end
