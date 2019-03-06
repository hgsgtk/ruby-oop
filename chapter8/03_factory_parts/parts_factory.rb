require 'ostruct'
require_relative './parts'

# Partsオブジェクトを生成することを唯一の仕事とする
module PartsFactory
  # class method
  # moduleから直接呼び出すことができる
  # See also https://qiita.com/shiopon01/items/fd6803f792398c5219cd#%E3%82%AF%E3%83%A9%E3%82%B9%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89
  def self.build(config, parts_class = Parts)

    parts_class.new(
        # https://ref.xaio.jp/ruby/classes/array/collect
        # collect: 要素の数だけ繰り返し処理、ブロックの戻り値を集めた配列を返す
        config.collect { |part_config|
          create_part(part_config)
        }
    )
  end

  def self.create_part(part_config)
    OpenStruct.new(
        name: part_config[0],
        description: part_config[1],
        needs_spare: part_config.fetch(2, true))
  end
end