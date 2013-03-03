class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to products_url, notice: 'New product was added.'
    else
      render action: :new
    end
  end

  def edit
    @product = find_product
  end

  def update
    @product = find_product

    if @product.update_attributes(params[:product])
      redirect_to products_url, notice: 'Product was successfully edited.'
    else
      render action: :edit
    end

  end

  def destroy
    find_product.destroy
    redirect_to products_url, notice: 'Product was successfully deleted.'
  end

  def autocomplete
    @products = Product.autocomplete(params[:q])
    render json: @products
  end

  private

  def find_product
    Product.find(params[:id])
  end


end
