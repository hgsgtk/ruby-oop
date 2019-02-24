require_relative './wheel'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  # 受信メッセージ gear_inches に応答する
  def gear_inches
    # width にメッセージ名変わっていたが、Gearでは更新漏れしていた
    ratio * wheel.diameter
  end

  # 受信メッセージ ratio に応答する
  def ratio
    chainring / cog.to_f
  end

end