require 'mathn'

module Math
  def self.radian(degree)
    degree.to_f / 180 * Math::PI
  end
end
