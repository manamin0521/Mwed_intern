# == Schema Information
#
# Table name: reviews
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  venue_id       :integer          not null
#  score_total    :integer
#  score_cost     :integer
#  score_venue    :integer
#  score_mc       :integer
#  score_food     :integer
#  score_staff    :integer
#  score_location :integer
#  title          :string(200)
#  body           :string(20000)
#  visited_on     :datetime
#

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :review_tags
end
