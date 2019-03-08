require 'minitest/autorun'
require_relative './bicycle'
require_relative './bicycle_interface_test'

class BicycleTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new({tire_size: 0})
  end
end