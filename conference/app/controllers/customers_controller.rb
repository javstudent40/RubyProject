class CustomersController < ApplicationController

	def index 
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def create
		@customer = Customer.new(customer_params)
		@customer.save
		redirect_to @customer

		

	end

	private

	def customer_params
		params.require(:customers).permit(:firstname, :lastname, :email)
	end
	
end
