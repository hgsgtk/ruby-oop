require 'minitest/autorun'
require_relative './bicycle'

class BicycleTest < Minitest::Unit::TestCase
  def test_spares
    bike = Bicycle.new(
                      style: :mountain,
                      size: 'S',
                      front_shock: 'Manitou',
                      rear_shock: 'Fox'
    )

    assert_equal('S', bike.size)
    assert_equal({
                     :tire_size => "2.1",
                     :chain => "10-speed",
                     :rear_shock => "Fox"
                 }, bike.spares)
  end
end