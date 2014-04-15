class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :reply, :string
      t.column :user_id, :int
      t.column :question_id, :int

      t.timestamps
    end
  end
end
