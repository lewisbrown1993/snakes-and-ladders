require("minitest/autorun")
require("minitest/rg")
require_relative("../gamepiece.rb")

class TestGamepiece < Minitest::Test

  def setup
    @gamepiece = Gamepiece.new
  end

  def test_can_create_gamepiece
    assert_equal(Gamepiece, @gamepiece.class())
  end

  def test_has_position
    assert_equal(0, @gamepiece.position)
  end

  end