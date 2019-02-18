require_relative './gear'
require "minitest/autorun"

class GearTest < Minitest::Unit::TestCase

  # 一見、WheelTestと同様の見た目だが、gear.gear_inchesの先で、
  # Wheelをオブジェクトを作成し、使用している
  def test_calculate_gear_inches
    gear = Gear.new(
                   chainring: 52,
                   cog: 11,
                   rim: 26,
                   tire: 1.5
    )
    assert_in_delta(137.1, gear.gear_inches, 0.01)
  end
end