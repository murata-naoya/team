class Endusers::ProductsController < ApplicationController
    def index
        @products = Product.all.with_deleted
    end

    def show
        @product = Product.find(params[:id])
    end 
end
