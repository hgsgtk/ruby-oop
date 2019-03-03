require_relative './bicycle'

class RoadBike < Bicycle
  attr_reader :size, :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    {tape_color: tape_color}
  end

  # サブクラスの初期値
  def default_tire_size
    '23'
  end
end