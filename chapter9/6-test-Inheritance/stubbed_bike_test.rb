require 'minitest/autorun'
require_relative './stubbed_bike'
require_relative './bicycle_subclass_test'

class StubbedBikeTest < MiniTest::Unit::TestCase
  include BicycleSubclassTest

  def setup
    @object = StubbedBike.new
  end
end