class Endusers::OrdersController < ApplicationController
  def new
    @carts = current_enduser.carts
    unless @carts.any?
      flash[:notice] = "カートは空です"
      render 'endusers/carts/index'
    end
    @order = Order.new
    @user = current_enduser
    @main_destination = current_enduser.destinations.find_by(address: true)
    @destination = current_enduser.destinations
  end

  def create
    order = current_enduser.orders.build(order_params)
    order.save
    carts = current_enduser.carts
    carts.destroy_all
    redirect_to thanks_path
    binding.pry
  end

  def thanks
  end

  def confirm
    @order = Order.new(order_params)
    @carts = current_enduser.carts
    if params[:order][:address] == "address1"
       @order.address = current_enduser.address
       @order.postal_code = current_enduser.postal_code
       @order.address_name = current_enduser.last_name_characters + current_enduser.first_name_characters
    elsif params[:order][:address] == "address2"
      @destination = Destination.find_by(params[:destination_id])
      @order.address = @destination.address
      @order.postal_code = @destination.postal_code
      @order.address_name = @destination.address_name
    elsif params[:order][:address] == "address3"
      #@des_new = Destination.new(destination_params)
      #@des_new.enduser_id = current_enduser.id
        @order.address = params[:order][:address_new]
        @order.postal_code = params[:order][:postal_code]
        @order.address_name = params[:order][:address_name]
    else
      @user = current_enduser
      @main_destination = current_enduser.destinations.find_by(address: true)
      @destination = current_enduser.destinations
      render "new"
    end
    if @carts.blank?
      redirect_to products_path
    end
  end

  def index
  end

  def show
  end

  private
  def order_params
    params.require(:order).permit(:enduser_id, :destination_id, :fee, :tax_rate, 
                                  :total_count, :order_status, :option, :address_name,
                                  :postal_code, :address,
                                  order_items_attributes: [:id, :product_id, :order_id, :count, :making_status])
  end

  def destination_params
    params.require(:destination).permit(:address_name, :postal_code, :address)
  end
end
