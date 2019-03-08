require 'minitest/autorun'
require_relative './mountain_bike'
require_relative './bicycle_interface_test'
require_relative './bicycle_subclass_test'

class MountainBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = MountainBike.new({front_shock: 'hoge', rear_shock: 'huga'})
  end
end