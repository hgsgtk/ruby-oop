require 'minitest/autorun'
require 'date'
require_relative './vehicle'

class VehicleTest < Minitest::Unit::TestCase
  def test_schedulable
    starting = Date.parse("2015/09/01")
    ending = Date.parse("2015/09/10")

    v = Vehicle.new

    assert_equal(true, v.schedulable?(starting, ending))
  end
end