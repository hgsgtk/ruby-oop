require_relative './schedulable'

class Bicycle
  include Schedulable

  def lead_days
    1
  end
end