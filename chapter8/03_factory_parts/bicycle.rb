# Bicycle class は、継承の階層構造における抽象スーパークラス
# composition を用いるコードへと変更することを目的とする
#
# Bicycle class は、sparesメッセージへの応答責任がある、スペアパーツの一覧を返す
# 自転車 - パーツという関係
class Bicycle
  # Parts オブジェクトを作る
  # 部品の集合体を表す
  # Bicycle have-a Parts
  attr_reader :size, :parts

  def initialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  def spares
    parts.spares
  end

end