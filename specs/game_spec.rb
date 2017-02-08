require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../gamepiece.rb")
require_relative("../board.rb")
require_relative("../square.rb")
require_relative("../feature.rb")
require_relative("../dice.rb")

class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new("Englebert")
    @player2 = Player.new("Humperdinck")
    @game = Game.new([@player1, @player2])
    @feature = Feature.new(:ladder, 5, 15)
    @game.board.add_feature(@feature) # !!
  end

  def test_can_create_game
    assert_equal(Game, @game.class())
  end

  def test_has_board
    assert_equal(Board, @game.board.class)
  end

  def test_number_of_players
    assert_equal(2, @game.players.count)
  end

  def test_current_player
    assert_equal(0, @game.current_player)
  end

  def test_next_player
    @game.next_player
    assert_equal(1, @game.current_player)
  end

  def test_reset_player_counter
    @game.next_player
    @game.next_player
    assert_equal(0, @game.current_player)
  end

  def test_activate_feature
    @player1.gamepiece.move_to(5)
    @game.activate_feature(@feature, @player1)
    assert_equal(15, @player1.gamepiece.position)
  end

  def test_take_turn
    old_position = @player1.gamepiece.position
    @game.take_turn(@player1)
    puts old_position
    puts @player1.gamepiece.position
  end

end