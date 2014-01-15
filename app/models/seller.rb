class Seller < ActiveRecord::Base
  belongs_to :ratable, polymorphic: true
  belongs_to :user
  validates_uniqueness_of :user_id

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :ratings, as: :ratable, dependent: :destroy
end
