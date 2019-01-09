class Product
  def self.create
    @product = if imported
                 ImportedProduct.new(base_price)
                 if base_price > 1000
                   LuxuryProduct.new(base_price)
                 else
                   Product.new(base_price)
                 end
               end
  end
end
