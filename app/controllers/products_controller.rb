class ProductsController < ApplicationController

	def index
		@products = Product.all
	end


	def new
		@product = Product.new
		@categories = Category.all
	end


	def edit
		@product = Product.find(params[:id])
		@categories = Category.all
	end


	def create
	  @product = Product.new(product_params)
	  categories = params[:category]
	  
	  #@product.category.clear
	  categories.each do |cat|
	  	@product.categories << Category.find(cat)
	  end

	  if @product.save
	    redirect_to products_path, notice: "El producto fue publicado con éxito"
	  else
	    render :new
	  end
	end


	def update
	  @product = Product.find(params[:id])
	  categories = params[:category]

	  @product.categories.clear
	  categories.each do |cat|
	  	@product.categories << Category.find(cat)
	  end
	  
	  if @product.update(product_params)
	    redirect_to products_path, notice: "El producto ha sido modificado con éxito"
	  else
	    render :edit
	  end
	end


	private
	  def product_params
	    params.require(:product).permit(:name, :price, :category=>[])
	    #params.require(:product).permit(:name, :price, :category)
	  end


end
