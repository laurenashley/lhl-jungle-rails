class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @msg = "TES TEST TEST TEST "
    @is_disabled = '5'
    # @is_disabled = @product.quantity < 1
  end

end
