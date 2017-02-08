require("minitest/autorun")
require("minitest/rg")
require_relative("../gamepiece.rb")
require_relative("../feature.rb")
require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../board.rb")
require_relative("../square.rb")

class TestGamepiece < MiniTest::Test

  def setup
    @player1 = Player.new("Englebert")
    @player2 = Player.new("Humperdinck")
    @game = Game.new([@player1, @player2])

    @gamepiece = Gamepiece.new
  end

  def test_can_create_gamepiece
    assert_equal(Gamepiece, @gamepiece.class())
  end

  def test_has_position
    assert_equal(0, @gamepiece.position)
  end

  def test_gamepiece_can_move
    @gamepiece.move_to(2)
    assert_equal(2, @gamepiece.position)
  end

end