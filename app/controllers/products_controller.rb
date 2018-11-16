class ProductsController < ApplicationController

  def index
    @products = Products.all
  end

  def show
    @product = Product.find(params[:id])
  end

  #somente adimin

  def new
    @product = Product.new
  end

  def create
    @category = Category.find(params[:id])
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :supplier, :sold_count,
                                    :sales_goal, :remaining_items, :current_price_cents,
                                    :avg_price_cents, :price_goal_cents, :category_id, :initial_price_cents)
  end
end
