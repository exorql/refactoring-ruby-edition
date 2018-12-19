class TextStatement < Statement
  def header_string(customer)
    "Rental Record for #{customer.name}\n"
  end

  def each_rental_string(_customer)
    "\t" + rental.movie.title + "\t" + rental.charge.to_s + "\n"
  end

  def footer_string(customer)
    <<-EOS
    Amount owed is #{customer.total_charge}\n
    You earned #{customer.total_frequent_renter_points} frequent renter points
    EOS
  end
end
