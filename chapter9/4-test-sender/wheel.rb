class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  # 受信メッセージ diameter に応答する
  # Gear から依存されている
  #
  # 再びパブリックインターフェースが変わった
  def width
    rim + (tire*2)
  end
end