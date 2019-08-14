class Order < ApplicationRecord
	has_many :line_items
	belongs_to :user, optional: true #an order may not belong to a user, it's optional
	serialize :order_items, Hash #serialization converts it into one big long string
end

