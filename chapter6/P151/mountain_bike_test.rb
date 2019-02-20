require 'minitest/autorun'
require_relative './mountain_bike'

# Minitest::Assertion: --- expected
# +++ actual
# @@ -1 +1 @@
# -{:tire_size=>"2.1", :chain=>"10-spped", :front_shock=>"Manitou", :rear_shock=>"Fox"}
# +{:chain=>"10-speed", :tire_size=>"23", :tape_color=>nil, :rear_shock=>"Fox"}
class MountainBikeTest < Minitest::Unit::TestCase
  def test_spares
    mountain_bike = MountainBike.new(
                                    size: 'S',
                                    front_shock: 'Manitou',
                                    rear_shock: 'Fox'
    )

    assert_equal('S', mountain_bike.size)
    assert_equal({
        :tire_size => '2.1',
        :chain => '10-spped',
        :front_shock => 'Manitou',
        :rear_shock => 'Fox'
                }, mountain_bike.spares)
  end
end