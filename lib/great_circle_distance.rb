# Computational formular and earth radius excerpted from:
# https://en.wikipedia.org/wiki/Great-circle_distance
require_relative 'radian'

class GreatCircleDistance
  EARTH_RADIUS = 6_371_000

  def initialize(coordinate_1, coordinate_2)
    @coordinate_1 = coordinate_1
    @coordinate_2 = coordinate_2
  end

  def distance
    EARTH_RADIUS * central_angle
  end

  private

  def central_angle
    Math.atan2(
      Math.sqrt(
        (Math.cos(phi_2) * Math.sin(delta_lambda)) ** 2 +
          (Math.cos(phi_1) * Math.sin(phi_2) -
            Math.sin(phi_1) * Math.cos(phi_2) * Math.cos(delta_lambda)) ** 2),
        (Math.sin(phi_1) * Math.sin(phi_2) + Math.cos(phi_1) *
          Math.cos(phi_2) * Math.cos(delta_lambda)))
  end

  def phi_1
    Math.radian @coordinate_1.lat
  end

  def phi_2
    Math.radian @coordinate_2.lat
  end

  def delta_lambda
    Math.radian(@coordinate_2.lng - @coordinate_1.lng)
  end

  attr_reader :coordinate_1, :coordinate_2
end
