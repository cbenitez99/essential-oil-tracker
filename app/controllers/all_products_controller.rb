class AllProductsController < ApplicationController

    def index
        all_products = AllProducts.all
        if all_products
            render json: all_products, status: :ok
        else
            render json: {error: ["No products to show"]}, status: :not_found
        end
    end

    def show 
        all_product = find_all_product
        if all_product
            render json: all_product, status: :ok
        else
            render json: {error: ["No product to show"]}, status: :not_found
        end
    end

    def create 
        all_product = AllProducts.new(all_product_params)
        if all_product.save
            render json: all_product, status: :created
        else
            render json: {errors: ["Could not add product"]}, status: :unprocessable_entity
        end
    end

    private

    def find_all_product
        AllProducts.find_by(id: params[:id])
    end

    def all_product_params
        params.require(:all_products).permit(:name, :price, :amount)
    end

end
