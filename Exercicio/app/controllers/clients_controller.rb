class ClientsController < ApplicationController

  # GET /clients
  def index
    @clients = Client.all
  end

  # GET /clients/id
  def show
    @client = Client.find(params[:id])
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/id/edit
  def edit
    @client = Client.find(params[:id])
  end

  # POST /clients
  def create
    @client = Client.new(params[:client])
    if(@client.save)
      redirect_to @client, notice: 'Cliente cadastrado com sucesso.'
    else
      render 'new'
    end
      
  end

  # PUT /clients/id
  def update
    @client = Client.find(params[:id])
    if( @client.update_attributes(params[:client]) )
      redirect_to @client, notice: 'Cliente alterado com sucesso.'
    else
      render 'edit'
    end
  end

  # DELETE /clients/id
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_url
  end

end
