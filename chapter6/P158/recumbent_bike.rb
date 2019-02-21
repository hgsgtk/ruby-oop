require_relative './bicycle'

class RecumbentBike < Bicycle
  def default_chain
    '9-speed'
  end
end