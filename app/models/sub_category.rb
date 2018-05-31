class SubCategory < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :category
  has_many :products, dependent: :destroy
  belongs_to :quiz, optional: true, dependent: :destroy

end
