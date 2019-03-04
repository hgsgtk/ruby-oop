require 'minitest/autorun'
require_relative './parts'
require_relative './part'

class PartsTest < Minitest::Unit::TestCase
  def test_initialize_road_bike_parts
    chain = Part.new(name: 'chain', description: '10-speed')
    road_tire = Part.new(name: 'tire_size', description: '23')
    tape = Part.new(name: 'tape_color', description: 'red')

    road_bike_parts = Parts.new([chain, road_tire, tape])
  end
end