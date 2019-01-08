class HeatingPlan
  # before
  # def within_range?(low, high)
  #  (low >= @range.low) && (high <= @range.high))
  # end

  # after
  def within_range?(room_range)
    (room_range.low >= @range.low) && (room_range.high <= @range.high)
  end
end
