require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")

class TestBoard < Minitest::Test

  def setup
    @board = Board.new
  end

  def test_can_create_board
    assert_equal(Board, @board.class())
  end

  end