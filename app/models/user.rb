class User < ActiveRecord::Base
  has_secure_password

  validates :username, :emailid, :password_digest, presence: { message: 'can not be empty' }
  validates :username, :emailid, uniqueness: { message: 'already exists' }
end
