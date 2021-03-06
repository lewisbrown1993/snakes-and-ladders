require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../gamepiece.rb")
# this next line only needed if we test_player_can_roll
# require_relative("../dice.rb")

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new("Englebert")
  end

  def test_can_create_player
    assert_equal(Player, @player.class())
  end

  def test_player_has_name
    assert_equal("Englebert", @player.name)
  end

  def test_player_has_gamepiece
    assert_equal(Gamepiece, @player.gamepiece.class)
  end

  def test_player_can_roll
    # puts @player.roll_dice
  end

end
