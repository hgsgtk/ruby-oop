require 'minitest/autorun'
require_relative './road_bike'
require_relative './bicycle_interface_test'

class RoadBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest

  def setup
    @bike = @object = RoadBike.new({size: 'L', tape_color: 'red'})
  end
end