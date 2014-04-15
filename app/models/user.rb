class User < ActiveRecord::Base
  validates :name, :presence => true
  validates :password_digest, :presence => true
  validates :email, :presence => true

  has_many :answers
  has_many :questions
end






