class Store < ApplicationRecord
    has_many :comments
    has_many :guests, through: :comments
end
