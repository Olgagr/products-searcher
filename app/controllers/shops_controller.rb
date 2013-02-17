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
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])

    if @shop.update_attributes(params[:shop])
      redirect_to shops_path, notice: 'Shop was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    Shop.find(params[:id]).destroy
    redirect_to shops_path, notice: 'Shop was successfully destroyed.'
  end

end
