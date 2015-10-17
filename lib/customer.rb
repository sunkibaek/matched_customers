require_relative 'coordinate'
require_relative 'great_circle_distance'

DOUBLIN_OFFICE = { lat: '53.3381985', lng: '-6.2592576' }

class Customer
  attr_reader :user_id, :name

  def initialize(attrs)
    @user_id = attrs['user_id']
    @name = attrs['name']
    @lat = attrs['latitude']
    @lng = attrs['longitude']
  end

  def close_to_doublin_office?
    distance < 100_000
  end

  private

  attr_reader :lat, :lng

  def distance
    GreatCircleDistance.new(
      Coordinate.new(lat: DOUBLIN_OFFICE[:lat], lng: DOUBLIN_OFFICE[:lng]),
      Coordinate.new(lat: lat, lng: lng)
    ).distance
  end
end
