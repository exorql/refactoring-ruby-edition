class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    TextStatement.value(self)
  end

  def html_statement
    HtmlStatement.value(self)
  end

  private

  def total_charge
    @rentals.reduce(0) { |sum, rental| sum + rental.charge }
  end

  def total_frequent_renter_points
    @rentals.reduce(0) { |sum, rental| sum += rental.frequent_renter_points }
  end
end
