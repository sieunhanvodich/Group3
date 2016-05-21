class ItemsController < ApplicationController
	before_action :set_category
	before_action :set_item, except: [:create]
	def menu
		@items = Item.all
	end
	
	def create
		@item = @category.items.create(item_params)
		redirect_to @category
	end

	def destroy
		@item = @category.items.find(params[:id])
		if @item.destroy
			flash[:success] = "item was deleted."
		else
			flash[:error] = "item could not be deleted."
	    end
		redirect_to @category
	end

	def complete
		@item.update_attribute(:completed_at, Time.now)
		redirect_to @category, notice: "item completed"
	end

	private

	def set_category
		@category = Category.find(params[:category_id])
	end

	def set_item
		@item = @category.items.find(params[:id])
	end

	def item_params
		params[:item].permit(:content, :price)
	end
end
