require_relative './gear'
require_relative './diameter_double'
require "minitest/autorun"

class GearTest < Minitest::Unit::TestCase

  # Wheel のインスタンスをテスト中に注入している
  #
  # 依然テストは通っている、夢の世界に生きるテストになった
  # 1 tests, 1 assertions, 0 failures, 0 errors, 0 skips
  def test_calculate_gear_inches
    gear = Gear.new(
                   chainring: 52,
                   cog: 11,
                   wheel: DiameterDouble.new
    )
    assert_in_delta(47.27, gear.gear_inches, 0.01)
  end
end