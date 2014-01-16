class WelcomeController < ApplicationController

  def index
    @product_pics = Product.all.map{|product| product.image}.compact
  end
end
