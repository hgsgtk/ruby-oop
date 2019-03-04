# 単一の部品を表すPartオブジェクトに依存する
# Arrayである必要があるのかもしれないことを考慮に入れ、Arrayのサブクラスとした
# 完璧なオブジェクト指向設計言語では正しい解決法だが・・・（詳しくはPartsTestにて）
class Parts < Array
  attr_reader :parts

  def spares
    parts.select {|part| part.needs_spare}
  end
end