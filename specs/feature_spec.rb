require("minitest/autorun")
require("minitest/rg")
require_relative("../feature.rb")

class TestFeature < Minitest::Test

  def setup
    @feature = Feature.new(:ladder, 5, 10)
  end

  def test_can_create_feature
    assert_equal(Feature, @feature.class())
  end

  def test_has_start_position
    assert_equal(5, @feature.start_position)
  end

  def test_has_end_position
    assert_equal(10, @feature.end_position)
  end

  def test_feature_has_type
    assert_equal(:ladder, @feature.type)
  end

  end