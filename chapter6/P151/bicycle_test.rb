require 'minitest/autorun'
require_relative './bicycle'

class BicycleTest < Minitest::Unit::TestCase
  def test_spares
    bike = Bicycle.new(
                      size: 'M',
                      tape_color: 'red'
    )

    assert_equal('M', bike.size)
    assert_equal({:tire_size => "23", :chain => "10-speed", :tape_color => "red"}, bike.spares)
  end
end