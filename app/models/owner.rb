class Owner < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password
end
