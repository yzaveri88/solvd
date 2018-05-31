class Quiz < ApplicationRecord
  belongs_to :sub_category
  has_many :user
  has_many :questions, dependent: :destroy
  has_many :quiz_sessions, dependent: :destroy
end
