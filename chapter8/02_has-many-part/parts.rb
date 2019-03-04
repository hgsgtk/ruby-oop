# 抽象クラス
# RoadBikeParts, MountainBikeParts という２つの抽象クラスを持つ
# 単一の部品を表すPartオブジェクトに依存する
class Parts
  attr_reader :parts

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select {|part| part.needs_spare}
  end

  def size
    parts.size
  end
end