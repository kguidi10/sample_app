
class OrdersController < ApplicationController
  before_action :authenticate_user!

	def index    
		@orders=Order.all
		@products = Product.all

 	end

  	def show      
  	end

  	def new
  	end

  	def create        
  	end

  	def destroy
  	end
    

end
