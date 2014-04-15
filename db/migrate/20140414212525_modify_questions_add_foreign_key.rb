class ModifyQuestionsAddForeignKey < ActiveRecord::Migration
  def change
    add_column :questions, :user_id, :int

  end
end
