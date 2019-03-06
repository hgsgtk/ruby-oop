require 'forwardable'

class Parts
  # https://docs.ruby-lang.org/ja/latest/class/Forwardable.html
  extend Forwardable
  def_delegators :@parts, :size, :each
  # https://docs.ruby-lang.org/ja/latest/class/Enumerable.html
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    select {|part| part.needs_spare}
  end
end