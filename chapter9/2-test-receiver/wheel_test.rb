require_relative './wheel'
require "minitest/autorun"

class WheelTest < Minitest::Unit::TestCase
  def setup
    @wheel = Wheel.new(26, 1.5)
  end

  # テストを使ってロールを文書化
  # Diameterizableを定義していることを表明する
  # Minitest::Assertion: Expected #<Wheel:0x007ffa56a5af98 @rim=26, @tire=1.5> (Wheel) to respond to #diameter.
  #
  # しかし、不完全な解決法
  # RSN1) 他のDiameterizable と共有できない、ロールの他の担い手はテストを複製しないといけない
  # RSN2) Gearの「夢の世界に生きるテスト」問題に対する助けにはなっていない
  # これらについてはダックタイプのテストで詳しく見ていく
  def test_implements_the_diameterizable_interface
    assert_respond_to(@wheel, :diameter)
  end

  def test_calculates_diameter
    assert_in_delta(29, @wheel.diameter, 0.01)
  end
end