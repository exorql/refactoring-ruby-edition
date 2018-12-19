class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title
  attr_writer :price

  def initialize(title, the_price)
    @title = title
    @price = the_price
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(day)
    @price.frequent_renter_points(day)
  end
end
