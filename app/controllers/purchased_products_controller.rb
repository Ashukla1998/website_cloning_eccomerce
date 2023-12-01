class PurchasedProductsController < ApplicationController
    def index
        @purchased_products = PurchasedProduct.all
      end
      # def show
      #   # Your logic to find or initialize the purchased product goes here
      #   # For example:
      #   # purchased_product = PurchasedProduct.find(params[:id])
        
      #   # Redirect to the show page for the purchased product
      #   redirect_to purchased_product_path(purchased_product)
      # end

end
