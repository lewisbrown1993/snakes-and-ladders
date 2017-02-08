require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../gamepiece.rb")

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

end
