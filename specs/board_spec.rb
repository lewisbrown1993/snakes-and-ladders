require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")
require_relative("../square.rb")

class TestBoard < Minitest::Test

  def setup
    @board = Board.new
  end

  def test_can_create_board
    assert_equal(Board, @board.class())
  end

  def test_board_has_squares
    assert_equal(Array, @board.squares.class)
    assert_equal(100, @board.squares.count)
    assert_equal(Square, @board.squares[0].class)
  end

  end