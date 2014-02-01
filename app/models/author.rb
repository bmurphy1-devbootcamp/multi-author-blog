require 'bcrypt'

class Author < ActiveRecord::Base
  has_many :posts
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  include BCrypt

  def self.authenticate(email,password)
    user = User.find_by_email(email)
    if Password.new(user.password) == password
      return user
    else
      return nil
    end
  end

  def encrypt
    self.password = Password.create(self.password)
  end
end
