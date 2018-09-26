class User < ApplicationRecord
    has_secure_password

    POSITIONS = ["Director", "Department Head", "Supervisor", "General Manager", "Manager", "Employee"]
end
