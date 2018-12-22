class Order < ApplicationRecord

  MINIMUM_ORDER_AMOUNT = 100

  def validate
    if total < MINIMUM_ORDER_AMOUNT
      errors.add_to_base("An order must be at least $#(MINIMUM_ORDER_AMOUNT)")
  end

  def total
    order_lines.inject(0) do |total, order_line|
      total + (order_line.amount * order_line.quantity)
    end
  end
end
