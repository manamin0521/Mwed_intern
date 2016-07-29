# == Schema Information
#
# Table name: venue_images
#
#  id       :integer          not null, primary key
#  venue_id :integer          not null
#  path     :string(200)
#

class VenueImage < ApplicationRecord
  belongs_to :venue

  def image_url
    "http://www.mwed.jp/d#{path}"
  end
end
