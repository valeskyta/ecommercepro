class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :user
  belongs_to :category #metodo

  has_many :likes, as: :likable
  has_many :user_likes, through: :likes, source: :user

  mount_uploader :photo, PhotoUploader
end

