class User < ActiveRecord::Base

  #all validations
  has_secure_password
  validates :email, uniqueness: true

  has_many :photos
end

