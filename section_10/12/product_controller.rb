class ProductController
  # before
  # def create
  #    @product = if imported
  #                 ImportedProduct.new(base_price)
  #                 if base_price > 1000
  #                   LuxuryProduct.new(base_price)
  #                 else
  #                   Product.new(base_price)
  #                 end
  #               end
  # end
  # after
  def create
    @product = Product.create(base_price, imported)
  end
end
