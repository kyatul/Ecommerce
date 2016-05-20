class ProductsController < ApplicationController

  def new
    @categories = Category.order(:name)
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  def create
    @category = Category.find(params[:product][:category_id])
    @product = @category.products.build(product_params)

    if @product.save
      flash[:success] = "Product Created"
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :description, :price)
    end

end
