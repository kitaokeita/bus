class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :book

  geocoded_by :address
after_validation :geocode, if: :address_changed?
end
