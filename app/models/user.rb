class User < ActiveRecord::Base

  #all validations
  has_secure_password
  validates :email, uniqueness: true

end
