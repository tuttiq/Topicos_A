class OrdersController < ApplicationController

  def index
    @client = Client.find(params[:client_id])
    @orders = @client.orders
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    @order.client_id = params[:client_id]
    if(@order.save)
      redirect_to client_orders_path(@order.client), notice: 'Compra cadastrada com sucesso.'
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if( @order.update_attributes(params[:client]) )
      redirect_to client_orders_path(@order.client), notice: 'Compra alterada com sucesso.'
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.delete
    redirect_to client_orders_path(@order.client)
  end

end
