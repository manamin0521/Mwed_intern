class VenueImage < ApplicationRecord
  belongs_to :venue

  def image_url
    "http://www.mwed.jp/d#{path}"
  end
end
