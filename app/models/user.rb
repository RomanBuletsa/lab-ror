class User < ApplicationRecord
   validates :firstname, :lastname, :email, :password, presence: true
   validates :email, uniqueness: true
   validates :email, uniqueness: { case_sensitive: false}
   validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
   validates :password, length: { in: 6..20 }

end
