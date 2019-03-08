require_relative './gear'
require_relative './diameter_double'
require "minitest/autorun"

class GearTest < Minitest::Unit::TestCase
  def setup
    @observer = MiniTest::Mock.new
    @gear = Gear.new(
        chainring: 52,
        cog: 11,
        wheel: DiameterDouble.new,
        observer: @observer
    )
  end

  # Wheel のインスタンスをテスト中に注入している
  #
  # 依然テストは通っている、夢の世界に生きるテストになった
  # 1 tests, 1 assertions, 0 failures, 0 errors, 0 skips
  def test_calculate_gear_inches
    assert_in_delta(47.27, @gear.gear_inches, 0.01)
  end

  # Gearにobserverへの通知の責任を追加したのでそれを保証したい。
  # テストでメッセージが送られたことを保証する
  #
  # モックを使う
  def test_notifies_observers_when_cogs_change
    @observer.expect(:changed, true, [52, 27]) # changesメッセージを受け取ることを期待するように伝え、
    @gear.set_cog(27)
    @observer.verify # たしかに受け取ったことを確認
  end

  def test_notifies_observers_when_chainrings_change
    @observer.expect(:changed, true, [42, 11])
    @gear.set_chainring(42)
    @observer.verify
  end
end