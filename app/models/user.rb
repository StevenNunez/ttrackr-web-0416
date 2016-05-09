class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  
  has_secure_password

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    !!user && user.authenticate(password)
  end
end
