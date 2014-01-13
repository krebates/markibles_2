class SellersController < ApplicationController

  def index
    @sellers = Seller.all
  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = Seller.new(seller_params)
    # @seller.user = current_user
    if @seller.save
      flash[:notice]='You have created a store'
      redirect_to sellers_path
    # else
    #   flash[:notice]= 'Unable to make store'
    end
  end

  def edit
    @seller = Seller.find(params[:id])
    # if current_user.id == @seller.user.id
    # end
  end

  def destroy
    @seller = Seller.find_by_id(params[:id])
    # if is_seller?
      if @seller.destroy
        redirect_to sellers_path
      else
        redirect_to root_path
      end
    # end
  end

  def update
    @seller = Seller.find(params[:id])
    @seller.update_attributes!(seller_params)
    redirect_to sellers_path
  end

  def show
    @seller = Seller.find(params[:id])
  end

  private

  def seller_params
    params.require(:seller).permit(:name, :website)
  end

  def is_seller?
    current_user.id == @seller
  end
end
