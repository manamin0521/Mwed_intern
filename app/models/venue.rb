# == Schema Information
#
# Table name: venues
#
#  id             :integer          not null, primary key
#  pref_id        :integer          not null
#  area_id        :integer          not null
#  name           :string(600)      not null
#  ruby           :string(600)      not null
#  title          :string(200)
#  description    :string(2000)
#  zip_code       :string(20)
#  address        :string(200)
#  score_total    :integer
#  score_cost     :integer
#  score_venue    :integer
#  score_mc       :integer
#  score_food     :integer
#  score_staff    :integer
#  score_location :integer
#

class Venue < ApplicationRecord
end
