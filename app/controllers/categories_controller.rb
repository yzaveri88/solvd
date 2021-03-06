class CategoriesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @categories = Category.all
    @electronics = Category.where(name: "Electronics")
    @outdoors = Category.where(name: "Outdoors")
    @electronics_sub_categories = SubCategory.where(category: @electronics)
    @outdoors_sub_categories = SubCategory.where(category: @outdoors)
  end

  def search
    if params[:query].present?
      @sub_category = Sub_category.where(name: params[:query])
    else
      @sub_category = Sub_category.all
    end
  end

  def show
    @category = Category.find(params[:id])
    @sub_categories = SubCategory.where(params[:category_id])
    # @sub_category = SubCategory.find(params[:id])
  end
end



