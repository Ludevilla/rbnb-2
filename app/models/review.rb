class Review < ApplicationRecord
  belongs_to :user
  belongs_to :accomodation
  has_many :bookings, through: :accomodations

  validates :rating, presence: true, scope: [0..5]
  validates :comment, presence: true
end
