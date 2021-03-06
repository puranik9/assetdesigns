class DataController < ApplicationController
    # This is the main api endpoint of our app for JSON get requests...
    
    # For all models, get the data from the database and format it in JSON
    def all_products 
        p "Requesting all products data!"
        products = Product.all
        render json: {status: 'SUCCESS', message: 'Loaded all products data', data: products}, status: :ok
    end 

    def all_shops
        p "Requesting all shops data!"
        shops = Shop.all
        render json: {status: 'SUCCESS', message: 'Loaded all shops data', data: shops}, status: :ok
    end 

    def all_suppliers 
        p "Requesting all suppliers data!"
        suppliers = Supplier.all
        render json: {status: 'SUCCESS', message: 'Loaded all suppliers data', data: suppliers}, status: :ok
    end 

    def all_supplychains 
        p "Requesting all supplychains data!"
        supplychains = SupplyChain.all
        render json: {status: 'SUCCESS', message: 'Loaded all supplychains data', data: supplychains}, status: :ok
    end 
end
