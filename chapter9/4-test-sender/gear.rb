require_relative './wheel'

class Gear
  attr_reader :chainring, :cog, :wheel, :observer

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
    @observer = args[:observer]
  end

  def set_cog(new_cog)
    @cog = new_cog
    changed
  end

  def set_chainring(new_chainring)
    @chainring = new_chainring
    changed
  end

  # Gearに追加新しい責任
  # コグ・チェーンリングが変わったとき必ずobserverへ通知
  # アプリケーションが正しくあるためには、Gearがobserverにchangedを送る必要がある
  # メッセージが送られたことをテストで保証したい
  # -> テストに続く
  def changed
    observer.changed(chainring, cog)
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