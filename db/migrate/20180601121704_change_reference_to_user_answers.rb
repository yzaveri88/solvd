class ChangeReferenceToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :user_answers, :user, index: true, foreign_key: true
    remove_column :user_answers, :quiz_session_id
    add_reference :user_answers, :quiz_session, index: true, foreign_key: true
  end
end
