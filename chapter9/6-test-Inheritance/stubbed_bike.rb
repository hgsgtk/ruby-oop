require_relative './bicycle'

class StubbedBike < Bicycle
  def default_tire_size
    0
  end

  def local_spares
    {saddle: 'painful'}
  end
end