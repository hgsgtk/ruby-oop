require_relative './wheel'

class Gear
  # 原著ではwheelは設定していないがしない場合次のエラーが起きる
  # NameError: undefined local variable or method `wheel' for #<Gear:0x007fd7e9257e70>
  attr_reader :chainring, :cog, :rim, :tire, :wheel
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end
end