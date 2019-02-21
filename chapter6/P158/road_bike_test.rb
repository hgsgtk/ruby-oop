require 'minitest/autorun'
require_relative './road_bike'

class RoadBikeTest < Minitest::Unit::TestCase
  def test_size
    road_bike = RoadBike.new(
                            size: 'M',
                            tape_color: 'red'
    )
    assert_equal('M', road_bike.size)

    # 雑にここに入れた
    assert_equal('23', road_bike.tire_size)
    assert_equal('10-speed', road_bike.chain)
  end
end