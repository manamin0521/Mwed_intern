class Venue < ApplicationRecord
  belongs_to :venue_genre
  has_many :reviews
  has_many :invoices
  has_many :venue_images
end
