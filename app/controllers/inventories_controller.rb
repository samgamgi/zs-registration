class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @inventories = current_user.inventories
  end

  def show
  end

  def new
     @inventory = current_user.inventories.build
     # @product = Product.find_by(name: "Bar Towel").name
  end

  def edit
  end

  def create
    @inventory = current_user.inventories.build(inventory_params)
    
    respond_to do |format|
      if @inventory.save(inventory_params)
        format.html { redirect_to @inventory, notice: 'Inventory was successfully added.' }
      else
        render action: 'new'
      end
    end
  end

  def update
    respond_to do |format|
      if @inventory.update(inventory_params)
        redirect_to @inventory, notice: 'Inventory was successfully updated.'
      else
        render action: 'edit' 
      end
    end
  end

  def destroy
    @inventory.destroy
    respond_to do |format|
      redirect_to inventories_url, notice: 'Inventory was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
      params.require(:inventory).permit(:description, :name, :price, :quantity)
    end
end
