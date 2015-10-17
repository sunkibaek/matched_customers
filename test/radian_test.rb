require 'minitest/autorun'
require './lib/radian'

class MathTest < MiniTest::Test
  def test_radian_with_zero
    assert_equal 0.0, Math.radian(0)
  end

  def test_radian_with_common_degrees
    assert_equal (Math::PI / 12), Math.radian(15)
    assert_equal (Math::PI / 6), Math.radian(30)
    assert_equal (Math::PI / 4), Math.radian(45)
    assert_equal (Math::PI / 3), Math.radian(60)
    assert_equal (Math::PI / 2), Math.radian(90)
    assert_equal Math::PI, Math.radian(180)
    assert_equal (Math::PI * 2), Math.radian(360)
  end

  def test_radian_with_number_in_string
    assert_equal Math::PI, Math.radian('180')
  end

  def test_radian_with_empty_string
    assert_equal 0.0, Math.radian('')
  end

  def test_radian_with_nil
    assert_equal 0.0, Math.radian(nil)
  end

  def test_radian_with_nothing
    assert_raises(ArgumentError) { Math.radian() }
  end
end
