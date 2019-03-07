require 'minitest/autorun'
require_relative './driver'
require_relative './preparer_interface_test'

class DriverTest < MiniTest::Unit::TestCase
  # モジュールをIncludeする
  include PreparerInterfaceTest

  def setup
    @driver = @object = Driver.new
  end
end