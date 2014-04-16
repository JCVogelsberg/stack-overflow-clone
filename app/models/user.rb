class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :name, :email

  validates :name, :presence => true
  validates :email, :presence => true

  has_many :answers
  has_many :questions
end






