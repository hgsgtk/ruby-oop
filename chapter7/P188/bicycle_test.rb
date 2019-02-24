require 'minitest/autorun'
require 'date'
require_relative './bicycle'

class BicycleTest < Minitest::Unit::TestCase
  def test_schedulable
    starting = Date.parse("2015/09/04")
    ending = Date.parse("2015/09/04")

    b = Bicycle.new

    assert_equal(true, b.schedulable?(starting, ending))
  end
end