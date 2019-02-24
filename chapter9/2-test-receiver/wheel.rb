class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  # 以前、diameter だったものが、widthに変わった
  def width
    rim + (tire*2)
  end
end