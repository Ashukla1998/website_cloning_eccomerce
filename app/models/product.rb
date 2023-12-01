class Product < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many:cart_products
  end
  

