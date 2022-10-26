class OrdersController < ApplicationController
  before_action :redirect_if_not_logged_in

  def show
      if params[:parcel_id] && parcel = Parcel.find_by_id(params[:parcel_id])
          @orders = parcel.orders
      else
          if params[:search]
              @orders = Order.search_by_order_status(params[:search]).order_by_created_at
          else
              @orders = Order.order_by_created_at
          end
      end
  end
  def new
    if params[:parcel_id] && parcel = Parcel.find_by_id(params[:parcel_id])
      @order = parcel.orders.build
    else
      @order = Order.new
      @order.build_parcel
    end
  end

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      flash[:order_created] = 'Order has been successfully placed!'
      redirect_to order_path(@order)
    else
      @order.build_parcel unless @order.parcel
      render :new
    end
  end

  def destroy
    @order.destroy if @order.user.id = current_user.id
    redirect_to order_path
  end

  private

  def order_params
    params.require(:order).permit(:parcel_id,
                                  parcel_attributes: %i[recipient_name reception_time recipient_address weigh from
                                                        destination])
  end

  def set_order
    @order = Order.find_by_id(params[:id])
    unless @order
      flash[:order_not_found] = 'Order does not exist.'
      redirect_to orders_path
    end
  end
end
