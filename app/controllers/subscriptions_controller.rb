class SubscriptionsController < ApplicationController

def index
render 'new'
end

def new
	@subscription = Subscription.new
	@products = Product.all
end

def create
	@subscription = Subscription.new
	@subscription.user_id = current_user.id
	params[:quantity].each do |product_id,quantity|
		product = Product.find product_id
		@subscription.subscription_lines.new(product_id: product_id, quantity: quantity, price: product.price)
	end
	@subscription.save
	redirect_to root_path, notice: 'Your subscription was updated successfully!'
end

def edit
	render 'new'
end

def show
	@subscription = Subscription.find params[:id]
end

end
