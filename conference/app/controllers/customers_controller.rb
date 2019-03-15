class CustomersController < ApplicationController

	def index 
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def new
		@customer = Customer.new
	end

	

	def edit
		@customer = Customer.find(params[:id])
	end

	def create
		@customer = Customer.new(customer_params)
		@customer.save
		redirect_to @customer

		

	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update(customer_params)
			redirect_to @customer
		else 
			render 'edit'	
		end
	end

	private

	def customer_params
		params.require(:customer).permit(:firstname, :lastname, :email)
	end
	
end
