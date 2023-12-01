class CartProductsController < ApplicationController
    def index
        @cart_product=CartProduct.all
        
    end

    def new
        @cart = current_user.carts.first_or_create # Assuming a user has only one cart
        
        @cart_product = @cart.cart_products.find_or_initialize_by(product_id: params[:product_id])
      
        if @cart_product.new_record?
          product = Product.find(params[:product_id])
          @cart_product.assign_attributes(quantity: 1, total_price: product.price)
        else
          @cart_product.quantity += 1
        end
      
        if @cart_product.save
          redirect_to cart_path(@cart), notice: 'Product added to cart!'
        else
          redirect_to products_path, alert: 'Failed to add product to cart!'
        end
      end
      
end
