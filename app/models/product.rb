class Product < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  has_many :ratings, as: :ratable
  belongs_to :user
  validates_numericality_of :price
  # belongs_to :category
  mount_uploader :image, ImageUploader
end
