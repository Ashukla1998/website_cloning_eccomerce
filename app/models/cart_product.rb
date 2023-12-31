class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  # belongs_to :user
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
