class HomeController < ApplicationController

  def index
    @categories = Category.all
    @cart_count = Cart.where("user_id = ?", 1).count
  end

  def category_products
    @products = Category.find(params[:id]).products
  end

  def product
    @product = Product.find(params[:id])
  end

  def search
    product_table = Product.arel_table
    @products = Product.where(product_table[:name].matches(search_argument))
  end

  def search_argument
    "%#{params[:search][:query]}%"
  end
end
