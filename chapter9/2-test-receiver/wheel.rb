class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  # 受信メッセージ diameter に応答する
  # Gear から依存されている
  def diameter
    rim + (tire * 2)
  end
end