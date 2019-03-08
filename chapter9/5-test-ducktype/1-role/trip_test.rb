require 'minitest/autorun'
require_relative 'trip'

class TripTest < Minitest::Unit::TestCase
  # モックを作る
  # Tripは唯一のPreparableなのでモジュールにはしない
  # TripがPreparerと協力、正しいインターフェースを使っていることを証明できる
  def test_requests_trip_preparation
    @preparer = MiniTest::Mock.new
    @trip = Trip.new
    @preparer.expect(:prepare_trip, nil, [@trip])

    @trip.prepare([@preparer])
    @preparer.verify
  end
end