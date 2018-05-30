class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :products
  belongs_to :quiz
end
