class RatingsController < ApplicationController
  before_filter :load_ratable


def index
  @ratable = Product.find(params[:product_id])
  @ratings = @ratable.ratings
end

def new
  @rating = @ratable.rating.new
end

def create
  @rating = @ratable.ratings.new(params[:rating])
  if @rating.save
    redirect_to [@ratable, :ratings], notice: "Rating created"
  else
    render :new
  end
end



def show
end

private

  def load_ratable
    resource, id = request.path.split('/')[1,2]
    @ratable = resource.singularize.classify.constantize.find(id)
  end
end

