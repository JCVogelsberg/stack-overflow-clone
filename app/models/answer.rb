class Answer < ActiveRecord::Base
  validates :reply, :presence => true
  validates :user_id, :presence => true
  validates :question_id, :presence => true

  belongs_to :user
  belongs_to :question

end
