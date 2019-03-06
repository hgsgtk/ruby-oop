require 'minitest/autorun'
require 'ostruct'
require_relative './bicycle'
require_relative './parts_factory'

class BicycleTest < Minitest::Unit::TestCase
  def test_road_bike_spares
    road_config = [
        ['chain', '10-speed'],
        ['tire_size', '23'],
        ['tape_color', 'red']
    ]
    road_bike = Bicycle.new(
        size: 'L',
        parts: PartsFactory.build(road_config))
    assert_instance_of(Array, road_bike.spares)
    road_bike.spares.each do |part|
      assert_instance_of(OpenStruct, part)
    end
  end

  def test_mountain_bike_spares
    mountain_config = [
        ['chain', '10-speed'],
        ['tire_size', '2.1'],
        ['front_shock', 'Manitou', false],
        ['rear_shock', 'Fox']
    ]
    mountain_bike = Bicycle.new(
        size: 'L',
        parts: PartsFactory.build(mountain_config)
    )
    assert_instance_of(Array, mountain_bike.spares)
    mountain_bike.spares.each { |part| assert_instance_of(OpenStruct, part) }
  end

  # 3行の設定追加のみで新しい自転車をサポートすることができるようになった
  def test_recumbent_bike_spares
    recumbent_config = [
        ['chain', '9-speed'],
        ['tire_size', '28'],
        ['flag', 'tall and orange']
    ]
    recumbent_bike = Bicycle.new(
        size: 'L',
        parts: PartsFactory.build(recumbent_config)
    )
    assert_instance_of(Array, recumbent_bike.spares)
    recumbent_bike.spares.each { |part| assert_instance_of(OpenStruct, part) }
  end
end