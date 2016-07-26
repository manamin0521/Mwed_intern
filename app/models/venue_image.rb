# == Schema Information
#
# Table name: venue_images
#
#  id       :integer          not null, primary key
#  venue_id :integer          not null
#  path     :string(200)
#

class VenueImage < ApplicationRecord
end
