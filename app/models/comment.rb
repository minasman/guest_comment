class Comment < ApplicationRecord
    belongs_to :store
    belongs_to :guest
    has_many :comment_updates
    accepts_nested_attributes_for :guest

    def guest_attributes=(guest)
        self.guest = Guest.find_or_create_by(name: guest.name)
        self.guest.update(guest)
      end
end
