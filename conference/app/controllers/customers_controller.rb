class CustomersController < ApplicationController
	def new
		@customers = Customer.all
	end
end
