class ProductsPdf < Prawn::Document
  def initialize(products)
    super()
    @products = products
    table_content
  end

  def table_content
    font("Courier") do
      table product_rows
    end
  end

  def product_rows
    [['#', 'Name', 'Price']] +
    @products.map do |product|
      [product.id, product.name, product.price]
    end
  end
end
