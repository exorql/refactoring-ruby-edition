# before
# class Account
#   def add_charge(base_price, tax_rate, imported)
#     total = base_price + base_price * tax_rate
#     total += base_price * 0.1 if imported
#     @charge << total
#   end
# end

# after
class Accont
  def add_charge(charge)
    @charge << charge
  end

  def total_charge
    @charge.inject(0) do |total_for_amount, charge|
      total_for_amount + charge.total
    end
  end
end|
