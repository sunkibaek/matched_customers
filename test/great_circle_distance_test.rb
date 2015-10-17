require 'minitest/autorun'
require './lib/coordinate'
require './lib/great_circle_distance'

class GreatCircleDistanceTest < MiniTest::Test
  def setup
    @great_circle_distance = GreatCircleDistance.new(
      coordinate_1, coordinate_2)
  end

  def test_initialize
    assert_kind_of GreatCircleDistance, great_circle_distance
  end

  def test_distance
    assert_equal 940_947.6260604435, great_circle_distance.distance
  end

  private

  attr_reader :great_circle_distance

  def coordinate_1
    Coordinate.new(lat: '50.0359', lng: '5.4253')
  end

  def coordinate_2
    Coordinate.new(lat: '58.3838', lng: '3.0412')
  end
end
