class PurchasesController < ApplicationController
  before_action :set_product, only: [:new, :create]

  def index
    @purchases = Purchase.all?
  end

  def show
    @purchase = Purchase.find(params[:id])
    @purchase = Purchase.new
  end

  def new
    @purchase = Purchase.new
  end

  def create
  end

  private

  def purchase_params
    params.require(:purchase).permit(:final_value_cents, :user_id)
  end

  def set_product
    @product_order = ProductOrder.find(params[:product_i])
  end
end
