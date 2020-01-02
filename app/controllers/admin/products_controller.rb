class Admin::ProductsController < ApplicationController
    def index
        @products = Product.all.with_deleted
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to admin_products_path
        else
            @products = Product.all.with_discord
        end  
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        @product.update
        redirect_to admin_product_path(@product)
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

    private
    def product_params
        params.require(:product).permit(:name, :description, :image, :price, :genre_id, :sell_status)
    end
end



