class Gear
  attr_reader :wheel

  def initialize(wheel)
    @wheel = wheel
  end

  def gear_inches
    # Wheelに送るdiameterメッセージはテストするべき？
    # gear_inches以外にdiameterにメッセージが送られたことを気にするメソッドはない
    # diameterは副作用がない、ただdiameterを教えてくれるだけ
    ratio * wheel.diameter
  end
end