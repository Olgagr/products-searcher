class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(params[:shop])

    if @shop.save
      redirect_to shops_path, notice: 'Shop was successfully created.'
    else
      render action: :new
    end
  end

  def edit
    @shop = find_shop
  end

  def update
    @shop = find_shop

    if @shop.update_attributes(params[:shop])
      redirect_to shops_path, notice: 'Shop was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    find_shop.destroy
    redirect_to shops_path, notice: 'Shop was successfully destroyed.'
  end

  def add_products
    @shop = find_shop
  end

  private

  def find_shop
    Shop.find(params[:id])
  end

end
