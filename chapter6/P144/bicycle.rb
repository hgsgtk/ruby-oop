class Bicycle
  # マウンテンバイク固有の部品: front_shock, rear_shock
  # style はどの部品がスペアのリストに現れるかを決定する
  attr_reader :style, :size, :tape_color,
              :front_shock, :rear_shock

  def initialize(args)
    @style = args[:style]
    @size = args[:size]
    @tape_color = args[:tape_color]
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  # styleを確認しだしている、前章でいえばダックタイピングのチャンス
  # 新たなスタイルが現れるとelse if が追加されることになる
  # else 以降がデフォルトになるコードを書いた場合、
  # 想定しないstyleの「何か」がわからない、おそらく想定したものではない
  def spares
    if style == :road
      {
          chain: '10-speed', # これは下でも同じものが設定されてる
          tire_size: '23', # milimeters
          tape_color: tape_color
      }
    else
      {
          chain: '10-speed',
          tire_size: '2.1', # inches
          rear_shock: rear_shock
      }
    end
  end
end