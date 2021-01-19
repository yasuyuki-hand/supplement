class BrandsController < ApplicationController
before_action :set_brand, only: [:show, :edit, :update, :destroy]

  def index
    @q = Brand.ransack(params[:q])
    @brands = @q.result(distinct: true).page(params[:page])
  end

  def new 
    @brand = Brand.new
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def create 
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brands_path
    else
      render 'new'
    end
  end

  def update 
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to brands_path
    else
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id]).destroy
    redirect_to brands_path
  end
    



  private 

  def brand_params
    params.require(:brand).permit(:name, :content, :picture)
  end

  def set_brand
    @brand = Brand.find(params[:id])
  end
end
