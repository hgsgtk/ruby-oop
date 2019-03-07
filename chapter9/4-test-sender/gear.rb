class Gear
  attr_reader :wheel

  def initialize(wheel)
    @wheel = wheel
  end

  def gear_inches
    # Wheelに送るdiameterメッセージはテストするべき？
    # gear_inches以外にdiameterにメッセージが送られたことを気にするメソッドはない
    # diameterは副作用がない、ただdiameterを教えてくれるだけ
    #
    # diameterを送ることの影響はGear内部に隠されている
    # アプリケーション全体としてこのメッセージが送られる必要はない、テストでは気にしない
    #
    # gear_inchesはdiameterの戻り値に依存
    # しかし、diameterの正しさを証明するテストは、Wheelに属するもの
    # Gearでテストするのは重複・冗長・メンテナンスコストを上げる
    # Gear.gear_inchesがいつも適切な値を返すことをテストすればOK
    ratio * wheel.diameter
  end
end