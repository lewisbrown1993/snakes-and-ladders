require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")

class TestGame < MiniTest::Test

  def setup
    @game = Game.new
  end

def test_can_create_game
  assert_equal(Game, @game.class())
end

end