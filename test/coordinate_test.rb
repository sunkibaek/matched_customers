require 'minitest/autorun'
require './lib/coordinate'

class CoordinateTest < MiniTest::Test
  def setup
    @coordinate = Coordinate.new(lat: '37.5667', lng: '126.9667')
  end

  def test_lat
    assert_equal 37.5667, coordinate.lat
  end

  def test_lng
    assert_equal 126.9667, coordinate.lng
  end

  private

  attr_reader :coordinate
end
