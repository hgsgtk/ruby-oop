require 'minitest/autorun'
require_relative './bicycle'
require_relative './part'
require_relative './parts'

# リファクタリングの結果を確認する
# 本テストケースが通るという事実により、Bicycle特有のコードが少なかったことが判明した
class BicycleTest < Minitest::Unit::TestCase
  def test_road_bike_size
    chain = Part.new(name: 'chain', description: '10-speed')
    road_tire = Part.new(name: 'tire_size', description: '23')
    tape = Part.new(name: 'tape_color', description: 'red')

    road_bike = Bicycle.new(
        size: 'L',
        parts: Parts.new([chain, road_tire, tape]))

    assert_equal('L', road_bike.size)
  end

  def test_road_bike_spares
    chain = Part.new(name: 'chain', description: '10-speed')
    road_tire = Part.new(name: 'tire_size', description: '23')
    tape = Part.new(name: 'tape_color', description: 'red')

    road_bike = Bicycle.new(
        size: 'L',
        parts: Parts.new([chain, road_tire, tape]))

    got = road_bike.spares
    assert_equal(3, got.size)
    # spares は Part objectの配列を返すようになった
    # しかし、コンポジションを学ぶ上で重要なのは、Partのロールを担うオブジェクトであるという点
    # そのため、このように返ってくるものが特定のインスタンスであることを確認しているテストは不適切と言えるかもしれない
    got.each do |part|
      assert_instance_of(Part, part)
      puts part
    end
  end

  def test_mountain_bike_size
    chain = Part.new(name: 'chain', description: '10-speed')
    mountain_tire = Part.new(name: 'tire_size', description: '2.1')
    rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
    front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)

    mountain_bike = Bicycle.new(
        size: 'L',
        parts: Parts.new([chain, mountain_tire, front_shock, rear_shock])
    )
    assert_equal('L', mountain_bike.size)
  end

  # partsも配列が返ってくるかと思いきやこれはインスタンスが返ってくるためエラーとなってしまった
  # Minitest::UnexpectedError: NoMethodError: undefined method `size' for #<Parts:0x00007ff5560be890>
  # like `step on rake`
  # See also https://www.youtube.com/watch?v=2WZLJpMOxS4
  #
  # 取り急ぎPartsクラスにsizeを追加したため上記エラーは解消されたが、
  # 同様の配列機能はどうせ欲しくなることが予想される
  def test_mountain_bike_parts_size
    chain = Part.new(name: 'chain', description: '10-speed')
    mountain_tire = Part.new(name: 'tire_size', description: '2.1')
    rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
    front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)

    mountain_bike = Bicycle.new(
        size: 'L',
        parts: Parts.new([chain, mountain_tire, front_shock, rear_shock])
    )
    assert_equal(4, mountain_bike.parts.size)
  end

  def test_mountain_bike_spares
    chain = Part.new(name: 'chain', description: '10-speed')
    mountain_tire = Part.new(name: 'tire_size', description: '2.1')
    rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
    front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)

    mountain_bike = Bicycle.new(
        size: 'L',
        parts: Parts.new([chain, mountain_tire, front_shock, rear_shock])
    )

    got = mountain_bike.spares
    assert_equal(3, got.size)
    got.each do |part|
      assert_instance_of(Part, part)
      puts part
    end
  end
end