require 'minitest/autorun'
require_relative './chanic'
require_relative './preparer_interface_test'

class MechanicTest < Minitest::Unit::TestCase
  # モジュールをIncludeする
  include PreparerInterfaceTest

  def setup
    @mechanic = @object = Mechanic.new
  end
end