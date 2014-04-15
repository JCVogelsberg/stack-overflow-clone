class ModifyQuestionsTable < ActiveRecord::Migration
  def change
    remove_column :questions, :user
  end
end






