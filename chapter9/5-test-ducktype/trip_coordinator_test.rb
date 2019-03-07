require 'minitest/autorun'
require_relative './trip_coordinator'
require_relative './preparer_interface_test'

class TripCoordinatorTest < MiniTest::Unit::TestCase
  # モジュールをIncludeする
  include PreparerInterfaceTest

  def setup
    @trip_coordinator = @object = TripCoordinator.new
  end
end