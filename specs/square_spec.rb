require("minitest/autorun")
require("minitest/rg")
require_relative("../square.rb")
require_relative("../feature.rb")

class TestSquare < Minitest::Test

  def setup
    @square = Square.new
  end

  def has_feature__false
    assert_nil(@square.feature)
  end

  def test_can_create_square
    assert_equal(Square, @square.class())
  end

  def test_add_feature
    feature = Feature.new(:ladder, 5, 15)
    @square.add_feature(feature)
    assert_equal(feature, @square.feature)
  end

end