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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      redirect_to products_url, notice: 'Product was successfully edited.'
    else
      render action: :edit
    end

  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_url, notice: 'Product was successfully deleted.'
  end


end