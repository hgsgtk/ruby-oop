require 'minitest/autorun'
require_relative './bicycle'
require_relative './bicycle_interface_test'

class BicycleTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest

  def setup
    # Bicycle作成時タイヤのサイズを与えている
    # initializeでtire_sizeを受け取る or default_tire_sizeメッセージの送信によって取得
    # tire_sizeを渡さないとBicycleがsetupの段階で死んでしまう
    #
    # Bicycleは抽象クラス、newメッセージを受け取ることを想定していない
    # → 綺麗な作成プロトコルはない、アプリケーション上は必要ない
    @bike = @object = Bicycle.new({tire_size: 0})
  end

  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(NotImplementedError) {@bike.default_tire_size}
  end
end