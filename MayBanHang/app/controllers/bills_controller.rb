class BillsController < ApplicationController
before_action :set_table
before_action :set_bill, except: [:create]
def create
@bill = @table.bills.create(bill_params)
redirect_to @table
end

def destroy
	if @bill.destroy
		flash[:success] = "Thanh toan xong"
	else
		flash[:delerror] = "Thanh toan chua thanh cong"
	end
	redirect_to @table
end

def complete
	@bill.update_attribute(:completed_at, Time.now)
	redirect_to @table, notice: "Da thanh toan"
end


private
def set_table
	@table = Table.find(params[:table_id])
end

def set_bill
	@bill = @table.bills.find(params[:id])
end

def bill_params
params[:bill].permit(:content)
end

	
end

