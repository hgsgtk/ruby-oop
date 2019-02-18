require_relative './wheel'

class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @rim = args[:rim]
    @tire = args[:tire]
  end

  # 受信メッセージ gear_inches に応答する
  def gear_inches
    # Wheel に対する diameter という送信メッセージ
    # diameter に依存している
    ratio * Wheel.new(rim, tire).diameter
  end

  # 受信メッセージ ratio に応答する
  def ratio
    chainring / cog.to_f
  end

end