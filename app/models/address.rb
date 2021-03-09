class Address < ApplicationRecord
	belongs_to :member

	validates :postal_code, presence: true
	validates :shipping_address, presence: true
	validates :name, presence: true

	def address_all
		self.postal_code + " " + self.shipping_address + " " + self.name
	end
end
