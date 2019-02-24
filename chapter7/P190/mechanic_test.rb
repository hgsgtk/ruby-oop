require 'minitest/autorun'
require 'date'
require_relative './mechanic'

class MechanicTest < Minitest::Unit::TestCase
  def test_schedulable
    starting = Date.parse("2015/02/28")
    ending = Date.parse("2015/09/10")

    m = Mechanic.new

    assert_equal(true, m.schedulable?(starting, ending))
  end
end