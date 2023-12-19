class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many :accomodations, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
end
