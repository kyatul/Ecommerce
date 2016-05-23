class CartsController < ApplicationController
  def index
    @carts = Cart.where(user_id: 1)
  end

  def add
    user_id = 1 #its a sample id
    @cart = Cart.where("user_id = ? AND product_id = ?", user_id, params[:id])

    if(@cart.length.zero?)
      @cart = Cart.new
      @cart.user_id = user_id
      @cart.product_id = params[:id]
      @cart.unit = 1
    else
      @cart = @cart.first
      @cart.unit = @cart.unit + 1
    end

    save_item
  end

  def destroy
    user_id = 1
    @cart = Cart.where("user_id = ? AND product_id = ?", user_id, params[:id])
    @cart.delete_all

    redirect_to(:back)
  end

  private

    def cart_params
      params.require(:cart).permit(:product_id)
    end

    def save_item
      if @cart.save
        flash[:success] = "Added to Cart Successfully"
        redirect_to(:back) #product_reviews_path(@product)
      else
        render 'index'
      end
    end
end
