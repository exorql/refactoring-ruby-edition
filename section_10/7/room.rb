class Room
  # before
  # def within_plan?(plan)
  #   low = days_temperature_range.low
  #   high = ...
  #   plan.within_range?(low, high)
  # end

  # after
  def within_plan?(plan)
    plan.within_range?(days_temperature_range)
  end
end
