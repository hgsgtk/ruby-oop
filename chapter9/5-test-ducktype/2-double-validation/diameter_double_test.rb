require 'minitest/autorun'
require_relative './diameter_double'
require_relative './diameterizable_interface_test'

# ついにDiameterDoubleが間違っていることがエラーとして検出された
# Minitest::Assertion: Expected #<DiameterDouble:0x007fa7629465e0> (DiameterDouble) to respond to #width.
class DiameterDoubleTest < MiniTest::Unit::TestCase
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterDouble.new
  end
end
