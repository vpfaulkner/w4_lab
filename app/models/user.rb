class User < ActiveRecord::Base

  has_many :lists
  has_many :todos, through: :lists

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password

end
