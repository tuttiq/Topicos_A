class ProductsController < ApplicationController

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/id
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/id/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  def create
    @product = Product.new(params[:product])
    if(@product.save)
      redirect_to @product, notice: 'Produto cadastrado com sucesso.'
    else
      render 'new'
    end
  end

  # PUT /products/id
  def update
    @product = Product.find(params[:id])
    if( @product.update_attributes(params[:product]) )
      redirect_to @product, notice: 'Produto alterado com sucesso.'
    else
      render 'edit'
    end
  end

  # DELETE /clients/id
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end

end
