class User < ActiveRecord::Base
  validates :email, uniqueness: true

  has_many :posts
  has_many :comments
end
