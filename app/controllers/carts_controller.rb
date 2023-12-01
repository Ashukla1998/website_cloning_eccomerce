class CartsController < ApplicationController
    before_action :set_cart, only: [:show, :checkout]

  
  def show
    @cart_products = @cart.cart_products.includes(:product)
  end

 
  def checkout
    
    @cart.cart_products.destroy_all
    
    redirect_to cart_path(@cart), notice: 'Checkout successful!'
  end

  private

  def set_cart
    @cart = current_user.carts.find(params[:id])
  end
end
