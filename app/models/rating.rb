class Rating < ActiveRecord::Base

  validates_presence_of :overall_rating
  validates_presence_of :flavor
  validates_presence_of :presentation
  belongs_to :user
  belongs_to :seller
  belongs_to :product

  belongs_to :ratable , :polymorphic => true, dependent: :destroy


  def average_overall
    if ratable.ratings.count != 0
      all_overall_ratings = []
      ratable.ratings.each do |rating|
        all_overall_ratings << rating.overall_rating
      end
      average_rating(all_overall_ratings)
    end
  end

  def average_flavor
    if ratable.ratings.count != 0
      all_flavor_ratings = []
      ratable.ratings.each do |rating|
        all_flavor_ratings << rating.flavor
      end
      average_rating(all_flavor_ratings)
    end
  end

  def average_presentation
    if ratable.ratings.count != 0
      all_presention_ratings = []
      ratable.ratings.each do |rating|
        all_presentation_ratings << rating.presentation
      end
      average_rating(all_overall_ratings)
    end
  end
end
