class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances


  # def guest_name
  #   self.appearances.guest.name
  # end
end
