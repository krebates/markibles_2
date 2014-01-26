class Product < ActiveRecord::Base
  belongs_to :ratable, polymorphic: true

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  has_many :ratings, as: :ratable
  has_many :messages
  belongs_to :user
  belongs_to :seller
  validates_numericality_of :price
  # belongs_to :category
  mount_uploader :image, ImageUploader

    def average_overall
    if ratings.count != 0
      all_overall_ratings = []
      ratings.each do |rating|
        all_overall_ratings << rating.overall_rating
      end
       average_overall =all_overall_ratings.inject { |sum, num| sum + num }.to_f / all_overall_ratings.size
       average_overall.round
    else
      'Item not rated yet'
    end
  end

  def average_flavor
    if ratings.count != 0
      all_flavor_ratings = []
      ratings.each do |rating|
        all_flavor_ratings << rating.flavor
      end
      all_flavor_ratings = all_flavor_ratings.inject { |sum, num| sum + num }.to_f / all_flavor_ratings.size
      all_flavor_ratings.round
      else
      'Item not rated yet'
    end
  end

  def average_presentation
    if ratings.count != 0
      all_presentation_ratings = []
      ratings.each do |rating|
        all_presentation_ratings << rating.presentation
      end
      all_presentation_ratings = all_presentation_ratings.inject { |sum, num| sum + num }.to_f / all_presentation_ratings.size
      all_presentation_ratings.round
      else
      'Item not rated yet'
    end
  end

  # def currency_converter
  #   price = price
  # end
end
