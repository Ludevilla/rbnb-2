class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :accomodation
  has_many :reviews, through: :accomodations

  validates :start_date, presence: true
  validates :end_date, presence: true
end
