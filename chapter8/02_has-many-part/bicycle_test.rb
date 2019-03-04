require 'minitest/autorun'
require_relative './bicycle'
require_relative './road_bike_parts'
require_relative './mountain_bike_parts'

# リファクタリングの結果を確認する
# 本テストケースが通るという事実により、Bicycle特有のコードが少なかったことが判明した
class BicycleTest < Minitest::Unit::TestCase
  def test_road_bike_size
    road_bike = Bicycle.new(
        size: 'L',
        parts: RoadBikeParts.new(tape_color: 'red'))
    assert_equal('L', road_bike.size)
  end

  def test_road_bike_spares
    road_bike = Bicycle.new(
        size: 'L',
        parts: RoadBikeParts.new(tape_color: 'red'))
    wanted = {
        tire_size: '23',
        chain: '10-speed',
        tape_color: 'red'
    }
    assert_equal(wanted, road_bike.spares)
  end

  def test_mountain_bike_size
    mountain_bike = Bicycle.new(
        size: 'L',
        parts: MountainBikeParts.new(rear_shock: 'Fox'))
    assert_equal('L', mountain_bike.size)
  end

  def test_mountain_bike_spares
    mountain_bike = Bicycle.new(
        size: 'L',
        parts: MountainBikeParts.new(rear_shock: 'Fox'))
    wanted = {
        tire_size: '2.1',
        chain: '10-speed',
        rear_shock: 'Fox'
    }
    assert_equal(wanted, mountain_bike.spares)
  end
end