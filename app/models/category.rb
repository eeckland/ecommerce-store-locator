class Category < ApplicationRecord
	has_many :products 
	#where we build our associations (where you build primary key tables, big reason why this is so much better)
end
