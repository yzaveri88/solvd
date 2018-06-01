class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :quiz_session
end
