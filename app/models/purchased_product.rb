class PurchasedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :Product
  belongs_to :PaymentSummary
end
