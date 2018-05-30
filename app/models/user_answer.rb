class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_session
  has_many :answers
end
