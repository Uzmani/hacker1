class User < ActiveRecord::Base
  include BCrypt
  validates :email, uniqueness: true

  has_many :posts
  has_many :comments
  

  def self.authenticate(email, password)
    user = self.find_by_email(email)
    return nil if user.nil?

    user.password == password ? user : nil

  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
