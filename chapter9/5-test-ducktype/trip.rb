require_relative './mechanic'
require_relative './trip_coordinator'

class Trip
  attr_reader :bicycles, :customers, :vehicle

  # 復習：Preparersが存在するのでコードが簡潔になる
  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end
end