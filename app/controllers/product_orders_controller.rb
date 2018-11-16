class ProductOrdersController < ApplicationController

  before_action :set_product, only: [:new, :create]

  def index
    @product_orders = ProductOrder.all
  end

  def show
    @product_order = ProductOrder.find(params[:id])
  end
# ------------------------------------------------------------
  def new
    @product_order = ProductOrder.new
  end

  def create
    @product_order = @product.product_orders.build(product_order_params)

    @product_order.order_value_cents = @product_order.quantity * @product.current_price_cents

    if @purchase.save
      @product.sold_count = @product.sold_count + @product_order.quantity
      @product.remaining_items = @product.remaining_items - @product_order.quantity

      disc_per_order = ((@product.initial_price_cents - @product.price_goal_cents)/(@product.sold_count + @product.remaining_items)) * @product_order.quantity

      @product.current_price_cents = @product.current_price_cents - disc_per_order

      @product.save

      redirect_to purchase_path(@purchase), notice: "Thanks for buying"

    else
      flash[:alert]="Insira a quantidade"
      render :new
    end
  end

  private

  def product_order_params
    params.require(:product_order).permit(:quantity, :product_id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
