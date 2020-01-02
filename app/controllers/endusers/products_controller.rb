class Endusers::ProductsController < ApplicationController
    def index
        @products = Product.all.with_deleted
    end

    def show
        @product = Product.find(params[:id])
        if enduser_signed_in?
            @cart = Cart.find_by(product_id: @product.id, enduser_id: current_enduser.id)
            if @cart.blank?
                @cart = Cart.new
            end
        end
    end 
end
