class SubCategory < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :category
  has_many :products, dependent: :destroy
  has_one :quiz, dependent: :destroy, optional: true

end
