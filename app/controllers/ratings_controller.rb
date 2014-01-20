class RatingsController < ApplicationController
  before_filter :load_ratable


def index
  @ratable = Product.find(params[:product_id])
  @ratings = @ratable.ratings
end

def new
  @rating = @ratable.ratings.new
end

def create
  @rating = @ratable.ratings.new(rating_params)
  if @rating.save
    redirect_to root_path #[@ratable, :ratings], notice: "Rating created"
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

  def rating_params
    params.require(:rating).permit(:overall_rating, :flavor, :presentation, :additional_comments, [:overall_rating, :flavor, :presentation, :additional_comments])
  end

end

