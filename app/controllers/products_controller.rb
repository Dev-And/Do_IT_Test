class ProductsController < ApplicationController

  def index
    @user = current_user
    @products = Product.all
    @categories = Category.all
    if params[:category]
      category = @categories.find(params[:category])
      @products = category.products
    end
  end

  def show
    @product = Product.find(params[:id])

  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(products_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def products_params
    params.require(:product).permit(:name)
  end

  def filter_params(params)
    params.slice(:category)
  end
end
