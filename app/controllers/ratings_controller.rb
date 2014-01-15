class RatingsController < ApplicationController

def new

end

def index
  @ratable = Product.find(params[:product_id])
  @ratings = @ratable.ratings
end


# def show
#   @school = School.find(params[:id])
#   @user = current_user.schools.find_by_user_id(params[:user_id])
#   @title = @school.school_name
#   @hostable = @school
#   @courses = @hostable.courses
#   @course = Course.new
# end

end
