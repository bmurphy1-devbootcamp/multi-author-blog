require 'bcrypt-ruby'

class Author < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  include BCrypt
end
