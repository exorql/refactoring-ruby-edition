# before
class Employee
  def ten_percent_raise
    @salary *= 1.1
  end

  def five_percent_raise
    @salary *= 1.05
  end
end

# after
class Employee
  def raise(factor)
    @salary *= (1 + factor)
  end
end
