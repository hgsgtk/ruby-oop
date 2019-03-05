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

  # Enumerable moduleをincludeした
  # + messageは理解しないため例外が発生する
  def test_combo_parts
    chain = Part.new(name: 'chain', description: '10-speed')
    road_tire = Part.new(name: 'tire_size', description: '23')
    tape = Part.new(name: 'tape_color', description: 'red')
    mountain_tire = Part.new(name: 'tire_size', description: '2.1')
    rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
    front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)

    road_bike_parts = Parts.new([chain, road_tire, tape])
    mountain_bike_parts = Parts.new([chain, mountain_tire, rear_shock, front_shock])

    # Minitest::UnexpectedError: NoMethodError: undefined method `+' for #<Parts:0x007fdef593a4c8>
    combo_parts = road_bike_parts + mountain_bike_parts
  end
end