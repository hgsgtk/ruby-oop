class Bicycle
  attr_reader :size, :tape_color

  def initialize(args)
    @size = args[:size]
    @tape_color = args[:tape_color]
  end

  # デフォルトの文字列を直接自身の内部に埋め込むという罪を犯している
  # しかし、そこそこ妥当なコード
  def spares
    {
        chain: '10-speed',
        tire_size: '23',
        tape_color: tape_color
    }
  end
end