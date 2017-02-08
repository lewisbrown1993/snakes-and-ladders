require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")
require_relative("../square.rb")
require_relative("../feature.rb")

class TestBoard < Minitest::Test

  def setup
    @board = Board.new
    @feature = Feature.new(:ladder, 5, 15)
  end

  def test_can_create_board
    assert_equal(Board, @board.class())
  end

  def test_board_has_squares
    assert_equal(Array, @board.squares.class)
    assert_equal(100, @board.squares.count)
    assert_equal(Square, @board.squares[0].class)
  end

  def test_has_features
    assert_equal(Array, @board.features.class)
  end

  def test_add_feature

  end


  # def test_square_has_feature?
  #   assert_equal(true, square_has_feature?(5))
  # end

  end