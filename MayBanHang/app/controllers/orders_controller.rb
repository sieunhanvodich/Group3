class OrdersController < ApplicationController
	before_action :set_table
	before_action :set_order, except: [:create]

	def create
		@order = @table.orders.create(order_params)
		redirect_to @table
	end
	
	def destroy 
		if @order.destroy
			flash[:success] = "Table order was deleted."
		else
			flash[:error] = "Table order could not be deleted."
		end	
		redirect_to @table
	end

	def complete
		@order.update_attribute(:completed_at, Time.now)
		redirect_to @table, notice: "Order completed"
	end


	private

	def set_table	
		@table = Table.find(params[:table_id])
	end

	def set_order
		@order = @table.orders.find(params[:id])
	end

	def order_params
		params[:order].permit(:content)
	end
end
