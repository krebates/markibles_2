class Rating < ActiveRecord::Base

  validates_presence_of :overall_rating
  validates_presence_of :flavor
  validates_presence_of :presentation
  belongs_to :user
  belongs_to :seller
  belongs_to :product

  belongs_to :ratable , :polymorphic => true, dependent: :destroy
end
