gem 'minitest', '~> 5.2'    # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require_relative 'player'   # => true

class PlayerTest < Minitest::Test
  def test_it_has_a_name
    player = Player.new("George")  # => #<Player:0x007feb79107860 @name="George", @guess="xxxx">

    assert_equal "George", player.name  # => true
  end

  def test_it_can_have_a_different_name
    player = Player.new("Bob")           # => #<Player:0x007feb79104e30 @name="Bob", @guess="xxxx">

    assert_equal "Bob", player.name  # => true
  end

  def test_it_has_a_guess
    player = Player.new("George")  # => #<Player:0x007feb79105560 @name="George", @guess="xxxx">

    assert_equal 'xxxx', player.guess  # => true
  end

  def test_it_can_have_a_new_guess
    player = Player.new("George", 'oooo')  # => #<Player:0x007feb791070e0 @name="George", @guess="oooo">

    assert_equal "oooo", player.guess  # => true
  end

end

# >> Run options: --seed 37517
# >>
# >> # Running:
# >>
# >> [38;5;154m.[0m[38;5;154m.[0m[41m[37mF[0m[38;5;148m.[0m[38;5;184m.[0m
# >>
# >> [38;5;154mF[0m[38;5;154ma[0m[38;5;148mb[0m[38;5;184mu[0m[38;5;184ml[0m[38;5;214mo[0m[38;5;214mu[0m[38;5;208ms[0m[38;5;208m [0m[38;5;203mr[0m[38;5;203mu[0m[38;5;198mn[0m in 0.001205s, 4149.3776 runs/s, 4149.3776 assertions/s.
# >>
# >>   1) Failure:
# >> PlayerTest#test_it_can_create_an_array_from_its_guess [/Users/richshea/Turing/mastermind/player_test.rb:34]:
# >> Expected: ["r", "r", "g", "y"]
# >>   Actual: ["r", "r", "g", "g"]
# >>
# >> 5 runs, 5 assertions, 1 failures, 0 errors, 0 skips
