class LineItem < ApplicationRecord
	belongs_to :product
	belongs_to :order, optional: true
	#product has a dual relationship, line item belongs to both product and order
end
