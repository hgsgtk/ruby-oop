require 'minitest/autorun'
require_relative './road_bike'
require_relative './bicycle_interface_test'
require_relative './bicycle_subclass_test'

class RoadBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = RoadBike.new({size: 'L', tape_color: 'red'})
  end

  # RoadBikeはlocal_sparesを実装しているので、sparesに応答する
  # しかし、テストではその知識を持ち出すべきではない
  # あくまで、local_sparesが動作することを保証するべき
  def test_puts_tape_color_in_local_spares
    assert_equal 'red', @bike.local_spares[:tape_color]
  end
end