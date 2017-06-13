class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def edit
  	@product = Product.find(params[:id])
  	@categories_select = @product.category
  	@categories = Category.all
  end
end
