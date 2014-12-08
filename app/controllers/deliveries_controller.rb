class DeliveriesController < ApplicationController

def index
render 'new'
end

def new
	@delivery = delivery.new
	@products = Product.all
end

def create
	@delivery = Delivery.new
	@delivery.user_id = current_user.id
	params[:quantity].each do |product_id,quantity|
		product = Product.find product_id
		@delivery.delivery_lines.new(product_id: product_id, quantity: quantity, price: product.price)
	end
	@delivery.save
	redirect_to delivery_path(@delivery)
end

def edit
	render 'new'
end

def show
	@delivery = Delivery.find params[:id]
end

end
