class SubCategory < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :category
  has_many :products
  belongs_to :quiz, optional: true
end
