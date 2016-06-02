class ShoppingCartsController < ApplicationController
before_action :authenticate_user!

  def show




  end

  def add
    @cart = ShoppingCart.create
    @product = Product.find(params[:id])
    @cart.add(@product, @product.price)

  end

  def remove

  end
end
