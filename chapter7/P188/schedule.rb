class Schedule
  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class}" +
        "is not schedule\n" +
        " between #{start_date} and #{end_date}"
  end
end