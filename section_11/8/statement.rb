class Statement
  def value(customer)
    result = header_string(customer)
    customer.rentals.each do |rental|
      result += each_rental_string(rental)
    end

    result += footer_string(customer)
    result
  end
end
