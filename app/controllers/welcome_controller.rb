class WelcomeController < ApplicationController

  def index
    @product_pics = Product.all.keep_if{|product| product.image != nil}
  end
end
