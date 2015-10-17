class Coordinate
  attr_reader :lat, :lng

  def initialize(lat:, lng:)
    @lat = lat.to_f
    @lng = lng.to_f
  end
end
