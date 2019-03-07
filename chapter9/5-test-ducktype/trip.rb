require_relative './mechanic'
require_relative './trip_coordinator'

class Trip
  attr_reader :bicycles, :customers, :vehicle

  # 復習：
  # オブジェクトのクラスを確認し、どのメッセージを送るかを確認しないといけない
  # 3つの具象クラスにprepareを結合
  # このテストは辛くメンテナンスコストが高い
  def prepare(preparers)
    preparers.each do |preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycle(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    end
  end
end