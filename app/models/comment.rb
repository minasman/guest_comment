class Comment < ApplicationRecord
    belongs_to :store
    belongs_to :guest
    has_many :comment_updates

    validates :case_number, uniqueness: true
    accepts_nested_attributes_for :guest

    COMMENT_TYPES = ["Complaint", "Compliment", "Inquiry"]
    SOURCE = ["800#", "Local"]
    URGENT = ["General", "Urgent"]
    CONTACT_TYPE = ["Phone", "Email"]
    ORDER_POINT = ["DT", "FC", "Mobile", "Kiosk", "Delivery", "Other"]
    STATUS = ["Open", "Closed"]


    def guest_attributes=(guest)
        self.guest = Guest.find_or_create_by(name: guest.name)
        self.guest.update(guest)
      end
end
