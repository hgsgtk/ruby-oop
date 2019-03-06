require 'minitest/autorun'
require_relative './part'

class PartTest < Minitest::Unit::TestCase
  def test_initialize
    chain = Part.new(name: 'chain', description: '10-speed')
    road_tire = Part.new(name: 'tire_size', description: '23')
    tape = Part.new(name: 'tape_color', description: 'red')
    mountain_tire = Part.new(name: 'tire_size', description: '2.1')
    rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
    front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)
  end
end