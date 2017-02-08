require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../gamepiece.rb")


class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new("Englebert")
    @player2 = Player.new("Humperdinck")
    @game = Game.new([@player1, @player2])
  end

def test_can_create_game
  assert_equal(Game, @game.class())
end

def test_number_of_players
  assert_equal(2, @game.players.count)
  end

end