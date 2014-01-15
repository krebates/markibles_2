class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates_presence_of :username
  # validates_uniqueness_of :username

  # validates_presence_of :first_name
  # validates_presence_of :last_name

  has_many :ratings
  has_one :seller
  has_many :products



end
