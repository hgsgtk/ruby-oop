require_relative './gear'
require_relative './wheel'
require "minitest/autorun"

class GearTest < Minitest::Unit::TestCase

  # Wheel のインスタンスをテスト中に注入している
  # Minitest::UnexpectedError: NoMethodError: undefined method `diameter' for #<Wheel:0x007fe54bad3f30 @rim=26, @tire=1.5>
  def test_calculate_gear_inches
    gear = Gear.new(
                   chainring: 52,
                   cog: 11,
                   wheel: Wheel.new(26, 1.5)
    )
    assert_in_delta(137.1, gear.gear_inches, 0.01)
  end
end