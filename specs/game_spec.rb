require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")

class TestGame < MiniTest::Test

  def setup
    @game = Game.new(2)
  end

def test_can_create_game
  assert_equal(Game, @game.class())
end

def test_number_of_players
  assert_equal(2, @game.number_of_players)
  end

end