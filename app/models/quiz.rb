class Quiz < ApplicationRecord
  belongs_to :sub_category
  has_many :user
  has_many :questions
end
