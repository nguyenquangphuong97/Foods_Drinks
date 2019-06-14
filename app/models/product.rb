class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items, dependent: :destroy
<<<<<<< HEAD
  has_many :ratings, dependent: :destroy
=======
  has_many :rating, dependent: :destroy
>>>>>>> add model and relationship
end
