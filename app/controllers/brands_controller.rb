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



  private 

  def brand_params
    params.require(:brand).permit(:name, :content, :picture)
  end

  def set_brand
    @brand = Brand.find(params[:id])
  end
end
