require 'minitest/autorun'
require_relative './recumbent_bike'

# default_tire_sizeを意識していないプログラマが作成したためにエラー
# Minitest::UnexpectedError: NameError: undefined local variable or method `default_tire_size' for #<RecumbentBike:0x007fada6a77348 @size="S", @chain="9-speed">
#
# NotImplementedError 実装後は明示的になった
# Minitest::UnexpectedError: NotImplementedError: NotImplementedError
#
# 追加のメッセージを込めた
# Minitest::UnexpectedError: NotImplementedError: This RecumbentBike cannot respond to:
class RecumbentBikeTest < Minitest::Unit::TestCase
  def test_initialize
    bent = RecumbentBike.new(size: 'S')
  end

  def test_spares
    bent = RecumbentBike.new(flag: 'tail and orange')
    assert_equal({
        :tire_size => '28',
        :chain => '9-speed',
        :flag => 'tail and orange'
                 }, bent.spares)
  end
end