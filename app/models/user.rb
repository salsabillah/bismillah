class User < ApplicationRecord
  # has_secure_password

  def self.search(search)
     where("email LIKE ?", "%#{search}%") 
  end
end