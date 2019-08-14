#this pulls up our catelog, with options to filter by category or filter by brand
#have to add coding here to tell the view what data to display

class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all #Select * from product
  end

  def items_by_category
  	@products = Product.where(category_id: params[:category_id]) #select products where category_id =
  	@categories = Category.find(params[:category_id]) #select Category where category id =
  end

  def items_by_brand
  	@products = Product.where(brand_id: params[:brand_id]) #select products where brand_id =
  	@categories = Category.find(params[:brand_id]) #select Brand where brand id =
  end
end
