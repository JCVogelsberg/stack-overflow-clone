class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :question, :string
      t.column :user, :string
    end
  end
end



