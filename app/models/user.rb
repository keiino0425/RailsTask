class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password_digest, presence: true, length: { minimum: 8 }, allow_nil: true
end
