require_relative './wheel'
require_relative './diameterizable_interface_test'
require "minitest/autorun"

class WheelTest < Minitest::Unit::TestCase
  include DiameterizableInterfaceTest

  def setup
    @wheel = @object = Wheel.new(26, 1.5)
  end

  def test_calculates_diameter
    assert_in_delta(29, @wheel.width, 0.01)
  end
end