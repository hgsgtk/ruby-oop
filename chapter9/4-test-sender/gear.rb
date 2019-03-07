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
    # wheel変数内にあるオブジェクトが diameter に応答する
    # Diameterizable ロールを担うことになった

    # Gearを作る際には Diameterizable を注入する必要が出てきた
    # しかし、Wheelは diameter に応答するというこのロールに答える唯一のクラス
    # アプリケーションとして動かす際には毎回Wheelインスタンスを注入する必要がある
    #
    # 更に、Wheelを直接注入するか、Diameterizableを注入することは、プログラマの考えが大きく違う
    # クラスに縛られない想像力をDiameterizableは可能にしている
    # 注入するオブジェクトがロールのインスタンスであると考える -> Diameterizable についてより多くの選択肢が考えられる
    ratio * wheel.diameter
  end

  # 受信メッセージ ratio に応答する
  def ratio
    chainring / cog.to_f
  end

end