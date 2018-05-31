class AddParentAnswerIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :parent_answer_id, :integer
  end
end
