class CartItem < ApplicationRecord

	belongs_to :member
	belongs_to :item

	validates :number_of_items, presence: true
end
