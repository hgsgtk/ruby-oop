class Bicycle
  # 重要な戦略
  # 全てをサブクラスに下げた上でいくつか必要なものを引き上げる
  # 引き上げたものはエラーが起きたところだった
  # 継承の難しさは、抽象から具象を厳密に分けることに失敗すること
  # 全てサブクラスに下げないと、具象がスーパークラスにに残ることになってしまう
  # 具象の見落としは致命的だが、抽象の見落としは後で可視化される
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size] # RoadBikeから昇格
    @chain = args[:chain] # sparesを昇格させるため
    @tire_size = args[:tire_size] # sparesを昇格させるため
  end
end