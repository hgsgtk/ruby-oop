require 'minitest/autorun'
require_relative './parts_factory'

class PartsFactoryTest < Minitest::Unit::TestCase
  def test_parts_factory_build_road_parts
    road_config = [
        ['chain', '10-speed'],
        ['tire_size', '23'],
        ['tape_color', 'red']
    ]
    road_parts = PartsFactory.build(road_config)
    assert_instance_of(Parts, road_parts)
  end

  def test_parts_factory_build_mountain_parts
    mountain_config = [
        ['chain', '10-speed'],
        ['tire_size', '2.1'],
        ['front_shock', 'Manitou', false],
        ['rear_shock', 'Fox']
    ]
    mountain_parts = PartsFactory.build(mountain_config)
    assert_instance_of(Parts, mountain_parts)
  end
end