require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class TestDice < Minitest::Test

  def setup()
    @dice = Dice.new()
  end

  def test_can_create_dice
    assert_equal(Dice, @dice.class())
  end

  def test_dice_starts_with_no_value
    assert_nil(Dice.new.value)
  end

end