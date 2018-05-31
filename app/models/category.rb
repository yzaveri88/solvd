class Category < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :sub_categories, dependent: :destroy
end




