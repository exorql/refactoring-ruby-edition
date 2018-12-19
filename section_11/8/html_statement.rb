class HtmlStatement < Statement
  def header_string(customer)
    "<h1>Rentals for <em>#{customer.name}</em></h1><p>\n"
  end

  def each_rental_string(_customer)
    "\t" + rental.movie.title + ': ' + rental.charge.to_s + "<br>\n"
  end

  def footer_string(customer)
    <<-EOS
    <p>
      You owe <em>#{customer.total_charge}</em>
    <p>
      On this rental you earned
    <p>
      <em>#{customer.total_frequent_renter_points}</em>
      frequent renter points
    </p>
    EOS
  end
end
