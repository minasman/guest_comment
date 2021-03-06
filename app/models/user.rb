class User < ApplicationRecord
    validates :first_name, :last_name, :position, :username, :password, presence: true
    validates :username, :email, uniqueness: true
    has_secure_password

    POSITIONS = ["Director", "Department Head", "Supervisor", "General Manager", "Manager", "Employee"]
end
