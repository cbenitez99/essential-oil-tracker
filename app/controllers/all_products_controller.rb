class ProductsController < ApplicationController

    def index
        products = Product.all
        if products
            render json: products, status: :ok
        else
            render json: {error: ["No products to show"]}, status: :not_found
        end
    end

    def show 
        product = find_product
        if product
            render json: product, status: :ok
        else
            render json: {error: ["No product to show"]}, status: :not_found
        end
    end

    def create 
        product = Product.new(product_params)
        if product.save
            render json: product, status: :created
        else
            render json: {errors: ["Could not add product"]}, status: :unprocessable_entity
        end
    end

    private

    def find_product
        Product.find_by(id: params[:id])
    end

    def product_params
        params.permit(:name, :price, :amount)
    end

end
