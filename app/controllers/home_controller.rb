class HomeController < ApplicationController

  def index
    @categories = Category.all
  end

  def category_products
    @products = Category.find(params[:id]).products
  end

  def search
    product_table = Product.arel_table
    @products = Product.where(product_table[:name].matches(search_argument))
  end

  def search_argument
    "%#{params[:search][:query]}%"
  end
end
