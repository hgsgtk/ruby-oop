class Mechanic
  # 復習： Preparer interfaceを実装する
  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  def prepare_bicycle(bicycle)
    # Something、本よ全量のコードくれ
  end
end