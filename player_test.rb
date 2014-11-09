gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'player'

class PlayerTest < Minitest::Test
  def test_it_has_a_name
    player = Player.new("George")

    assert_equal "George", player.name
  end

  def test_it_can_have_a_different_name
    player = Player.new("Bob")

    assert_equal "Bob", player.name
  end

  def test_it_has_a_guess
    player = Player.new("George")

    assert_equal 'xxxx', player.guess
  end

  def test_it_can_have_a_new_guess
    player = Player.new("George", 'oooo')

    assert_equal "oooo", player.guess
  end

end
