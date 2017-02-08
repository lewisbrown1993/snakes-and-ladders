require("minitest/autorun")
require("minitest/rg")
require_relative("../square.rb")

class TestSquare < Minitest::Test

  def setup
    @square = Square.new
  end

  def has_feature
    assert_nil(@square.feature)
  end

  def test_can_create_square
    assert_equal(Square, @square.class())
  end


  end