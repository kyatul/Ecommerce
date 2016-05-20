class HomeController < ApplicationController

  def index
    @categories = Category.all
  end

  def category_products
    @products = Category.find(params[:id]).products
  end
end
