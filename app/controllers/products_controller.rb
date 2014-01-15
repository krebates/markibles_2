class ProductsController < ApplicationController
  before_action :authorize_user, only: [:new, :create, :edit, :destroy, :show]

  # def index
  #   @products = Product.all
  # end

  def index
    # if user_signed_in?
    if params[:user_id]
      @products = Product.where(user_id: params[:user_id])
      @link_path = products_path
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
    @user = current_user
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
      if @product.save
        flash[:notice]= 'You have added a product'
        redirect_to products_path
      else
        render :new
      end
    # end
  end

  def edit
    @product = Product.find(params[:id])
    if current_user.id == @product.user.id
    end
  end

  def destroy
    @product = Product.find_by_id(params[:id])
    if @product.destroy
      redirect_to products_path
    end
  end

  def show
    @product = Product.find(params[:id])
    if current_user.id == @product.user.id
    end
  end


  def update
    @product = Product.find(params[:id])
    @product.update_attributes!(product_params)
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :image, :description, :user_id, :price)
  end

  # def is_seller?
  #   current_user.id == @seller
  # end
end

